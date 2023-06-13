using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
//using System.Data.SQLite;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Invoice
{
    public partial class BuildingsList : UserControl
    {
        //private SQLiteConnection connection;
        //private SQLiteDataAdapter adapter;
        
        private MySqlConnection connection;
        private MySqlDataAdapter adapter;
        private DataTable dataTable;

        int selectedID;
        string s_bName, s_bAddress, s_region;

        public BuildingsList()
        {
            connection = new MySqlConnection("server=localhost;port=3306;database=Invoice;User Id=root;password=''");

            InitializeComponent();
            InitializeDatabase();
            LoadBuildingData();
        }

        private void InitializeDatabase()
        {
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            // Check if the buildings table exists, if not create it
            MySqlCommand cmd = new MySqlCommand("SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'Invoice' AND table_name = 'buildings'", connection);

            int cnt = Convert.ToInt32(cmd.ExecuteScalar());

            if (cnt == 0)
            {
                // Create buildings table
                MySqlCommand createTableCommand = new MySqlCommand(
                    "CREATE TABLE buildings (" +
                    "ID INTEGER PRIMARY KEY AUTO_INCREMENT, " +
                    "BuildingName TEXT, " +
                    "Region TEXT, " +
                    "BuildingAddress TEXT, " +
                    "Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP)",
                    connection);
                createTableCommand.ExecuteNonQuery();
            }

            connection.Close();
        }

        private void LoadBuildingData()
        {

            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            string query = "SELECT ID, BuildingName, Region, BuildingAddress FROM buildings";
            using (MySqlCommand command = new MySqlCommand(query, connection))
            {

                using (adapter = new MySqlDataAdapter(command))
                {
                    dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    gv_listTable.DataSource = dataTable;

                    // Set the DataGridView to automatically resize
                    gv_listTable.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;

                }
            }
            connection.Close();
        }

        private bool BuildingExists(string bldgname)
        {
            MySqlCommand command = new MySqlCommand("SELECT COUNT(*) FROM buildings WHERE BuildingName = @bldgname", connection);
            command.Parameters.AddWithValue("@bldgname", bldgname);

            int count = Convert.ToInt32(command.ExecuteScalar());

            return count > 0;
        }

        private void BuildingsList_Load(object sender, EventArgs e)
        {

        }

        private void btn_add_Click(object sender, EventArgs e)
        {
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            s_bName = gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["BuildingName"].Value?.ToString();
            s_region = gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["Region"].Value?.ToString();
            s_bAddress = gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["BuildingAddress"].Value?.ToString();


            // Check if building already exists
            if (BuildingExists(s_bName))
            {
                MessageBox.Show("This building is already taken.");
                return;
            }

            try
            {
                // Insert building data into "buildings" table
                using (MySqlCommand insertCommand = new MySqlCommand(
                    "INSERT INTO buildings (BuildingName, Region, BuildingAddress) " +
                    "VALUES (@bname, @region, @baddress);",
                connection))
                {
                    insertCommand.Parameters.AddWithValue("@bname", s_bName);
                    insertCommand.Parameters.AddWithValue("@region", s_region);
                    insertCommand.Parameters.AddWithValue("@baddress", s_bAddress);
                    
                    int rowsAffected = insertCommand.ExecuteNonQuery();
                    
                    if (rowsAffected > 0)
                    {
                        MessageBox.Show("Building added successfully!");
                        LoadBuildingData();

                    }
                    else
                    {
                        MessageBox.Show("Failed to add building.");
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error adding building: " + ex.Message);
            }
            finally
            {
                // Close database connection
                connection.Close();
            }

        }

        private void btn_refresh_Click(object sender, EventArgs e)
        {
            LoadBuildingData();
        }

        private void btn_update_Click(object sender, EventArgs e)
        {
            if (gv_listTable.SelectedRows.Count > 0)
            {
                selectedID = gv_listTable.SelectedRows[0].Index;
                int buildingID = Convert.ToInt32(gv_listTable.Rows[selectedID].Cells["ID"].Value);

                s_bName = gv_listTable.Rows[selectedID].Cells["BuildingName"].Value?.ToString();
                s_region = gv_listTable.Rows[selectedID].Cells["Region"].Value?.ToString();
                s_bAddress = gv_listTable.Rows[selectedID].Cells["BuildingAddress"].Value?.ToString();

                try
                {
                    string query = "UPDATE buildings SET `BuildingName` = @BuildingName, Region = @Region, `BuildingAddress` = @BuildingAddress WHERE ID = @BuildingID";

                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@BuildingName", s_bName);
                        command.Parameters.AddWithValue("@Region", s_region);
                        command.Parameters.AddWithValue("@BuildingAddress", s_bAddress);
                        command.Parameters.AddWithValue("@BuildingID", buildingID);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            MessageBox.Show("Building updated successfully.");
                            LoadBuildingData(); // Refresh the DataTable and DataGridView
                        }
                        else
                        {
                            MessageBox.Show("Failed to update building.");
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error updating building: " + ex.Message);
                }
                finally
                {
                    connection.Close();
                }

            }
        }

        private void btn_del_Click(object sender, EventArgs e)
        {
            if (gv_listTable.SelectedRows.Count > 0)
            {
                selectedID = gv_listTable.SelectedRows[0].Index;
                int buildingID = Convert.ToInt32(gv_listTable.Rows[selectedID].Cells["ID"].Value);

                DialogResult result = MessageBox.Show("Are you sure you want to delete this building?", "Confirm Delete", MessageBoxButtons.YesNo);
                if (result == DialogResult.Yes)
                {
                    try
                    {
                        string query = "DELETE FROM buildings WHERE ID = @BuildingID";
                        using (MySqlCommand command = new MySqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@BuildingID", buildingID);

                            connection.Open();
                            int rowsAffected = command.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                MessageBox.Show("Building deleted successfully.");
                                
                                LoadBuildingData(); // Refresh the DataTable and DataGridView
                            }
                            else
                            {
                                MessageBox.Show("Failed to delete building.");
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error deleting building: " + ex.Message);
                    }
                    finally
                    {
                        connection.Close();
                    }
                }
            }
        }
    }
}

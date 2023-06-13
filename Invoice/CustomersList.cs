using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Invoice
{
    public partial class CustomersList : UserControl
    {
        private MySqlConnection connection;
        private MySqlDataAdapter adapter;
        private DataTable dataTable;

        int selectedID, monthlyFee;
        string s_fName, s_lName, s_region, s_bName, s_address, s_title, s_startSub;

        public CustomersList()
        {
            connection = new MySqlConnection("server=localhost;port=3306;database=Invoice;User Id=root;password=''");

            InitializeComponent();
            InitializeDatabase();
            LoadCustomers();
        }

        private void InitializeDatabase()
        {
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            // Check if the buildings table exists, if not create it
            MySqlCommand cmd = new MySqlCommand("SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'Invoice' AND table_name = 'customers'", connection);

            int cnt = Convert.ToInt32(cmd.ExecuteScalar());

            if (cnt == 0)
            {
                // Create buildings table
                MySqlCommand createTableCommand = new MySqlCommand(
                    "CREATE TABLE customers (" +
                        "ID INTEGER PRIMARY KEY AUTO_INCREMENT, " +
                        "FirstName TEXT, " +
                        "LastName TEXT, " +
                        "Region TEXT, " +
                        "BuildingName TEXT, " +
                        "Address TEXT, " +
                        "MonthlyFee INTEGER NOT NULL, " +
                        "Title TEXT, " +
                        "StartOfSub Date, " +
                        "Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP)",
                    connection);
                createTableCommand.ExecuteNonQuery();
            }

            connection.Close();
        }

        private void LoadCustomers()
        {

            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            string query = "SELECT ID, FirstName, LastName, Region, BuildingName, Address, MonthlyFee, Title, StartOfSub FROM customers";
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
        private bool CustomerExists(string fname, string lname)
        {

            MySqlCommand command = new MySqlCommand("SELECT COUNT(*) FROM customers WHERE FirstName = @fname AND LastName = @lname", connection);
            command.Parameters.AddWithValue("@fname", fname);
            command.Parameters.AddWithValue("@lname", lname);

            int count = Convert.ToInt32(command.ExecuteScalar());

            return count > 0;
        }

        private void btn_add_Click(object sender, EventArgs e)
        {
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            s_fName = gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["FirstName"].Value?.ToString();
            s_lName = gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["LastName"].Value?.ToString();
            s_region = gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["Region"].Value?.ToString();
            s_bName = gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["BuildingName"].Value?.ToString();
            s_address = gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["Address"].Value?.ToString();
            monthlyFee = Convert.ToInt32(gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["MonthlyFee"].Value);
            s_title = gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["Title"].Value?.ToString();
            s_startSub = gv_listTable.Rows[gv_listTable.RowCount - 2].Cells["StartOfSub"].Value?.ToString();

            // Check if building already exists
            if (CustomerExists(s_fName, s_lName))
            {
                MessageBox.Show("Customer already exists.");
                return;
            }

            try
            {
                // Insert customer data into "customers" table
                string query = "INSERT INTO customers (FirstName, LastName, Region, BuildingName, Address, MonthlyFee, Title, StartOfSub) " +
                    "VALUES (@FirstName, @LastName, @Region, @BuildingName, @Address, @MonthlyFee, @Title, @StartDate)";

                using (MySqlCommand cmd = new MySqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@FirstName", s_fName);
                    cmd.Parameters.AddWithValue("@LastName", s_lName);
                    cmd.Parameters.AddWithValue("@Region", s_region);
                    cmd.Parameters.AddWithValue("@BuildingName", s_bName);
                    cmd.Parameters.AddWithValue("@Address", s_address);
                    cmd.Parameters.AddWithValue("@MonthlyFee", monthlyFee);
                    cmd.Parameters.AddWithValue("@Title", s_title);
                    cmd.Parameters.AddWithValue("@StartDate", s_startSub);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        MessageBox.Show("Customer added successfully!");
                        LoadCustomers();
                    }
                    else
                    {
                        MessageBox.Show("Failed to add customer.");
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error adding customer: " + ex.Message);
            }
            finally
            {
                // Close database connection
                connection.Close();
            }

        }

        private void btn_update_Click(object sender, EventArgs e)
        {
            if (gv_listTable.SelectedRows.Count > 0)
            {
                selectedID = gv_listTable.SelectedRows[0].Index;
                int customerID = Convert.ToInt32(gv_listTable.Rows[selectedID].Cells["ID"].Value);

                s_fName = gv_listTable.Rows[selectedID].Cells["FirstName"].Value?.ToString();
                s_lName = gv_listTable.Rows[selectedID].Cells["LastName"].Value?.ToString();
                s_region = gv_listTable.Rows[selectedID].Cells["Region"].Value?.ToString();
                s_bName = gv_listTable.Rows[selectedID].Cells["BuildingName"].Value?.ToString();
                s_address = gv_listTable.Rows[selectedID].Cells["Address"].Value?.ToString();
                monthlyFee = Convert.ToInt32(gv_listTable.Rows[selectedID].Cells["MonthlyFee"].Value);
                s_title = gv_listTable.Rows[selectedID].Cells["Title"].Value?.ToString();
                s_startSub = gv_listTable.Rows[selectedID].Cells["StartOfSub"].Value?.ToString();

                try
                {
                    string query = "UPDATE customers SET `FirstName` = @FirstName, `LastName` = @LastName, Region = @Region, `BuildingName` = @BuildingName, `Address` = @Address, `MonthlyFee` = @MonthlyFee, `Title` = @Title, `StartOfSub` = @StartOfSub WHERE ID = @CustomerID";

                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@FirstName", s_fName);
                        command.Parameters.AddWithValue("@LastName", s_lName);
                        command.Parameters.AddWithValue("@Region", s_region);
                        command.Parameters.AddWithValue("@BuildingName", s_bName);
                        command.Parameters.AddWithValue("@Address", s_address);
                        command.Parameters.AddWithValue("@MonthlyFee", monthlyFee);
                        command.Parameters.AddWithValue("@Title", s_title);
                        command.Parameters.AddWithValue("@StartOfSub", s_startSub);
                        command.Parameters.AddWithValue("@CustomerID", customerID);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            MessageBox.Show("Customer updated successfully.");
                            LoadCustomers(); // Refresh the DataTable and DataGridView
                        }
                        else
                        {
                            MessageBox.Show("Failed to update customer.");
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error updating customer: " + ex.Message);
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
                int customerID = Convert.ToInt32(gv_listTable.Rows[selectedID].Cells["ID"].Value);

                DialogResult result = MessageBox.Show("Are you sure you want to delete this customer?", "Confirm Delete", MessageBoxButtons.YesNo);
                if (result == DialogResult.Yes)
                {
                    try
                    {
                        string query = "DELETE FROM customers WHERE ID = @CustomerID";
                        using (MySqlCommand command = new MySqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@CustomerID", customerID);

                            connection.Open();
                            int rowsAffected = command.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                MessageBox.Show("Customer deleted successfully.");

                                LoadCustomers(); // Refresh the DataTable and DataGridView
                            }
                            else
                            {
                                MessageBox.Show("Failed to delete customer.");
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error deleting customer: " + ex.Message);
                    }
                    finally
                    {
                        connection.Close();
                    }
                }
            }
        }

        private void btn_refresh_Click(object sender, EventArgs e)
        {
            LoadCustomers();
        }
    }
}

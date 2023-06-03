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
    public partial class Buildings : UserControl
    {
        MySqlConnection connection = new MySqlConnection("server=localhost;port=3306;database=Invoice;User Id=root;password=''");

        public Buildings()
        {
            InitializeComponent();
            InitializeDatabase();
        }

        private void InitializeDatabase()
        {
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            // Check if the users table exists, if not create it
            MySqlCommand mySqlCommand = new MySqlCommand("SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'Invoice' AND table_name = 'buildings'", connection);

            int cnt = Convert.ToInt32(mySqlCommand.ExecuteScalar()); ;

            if (cnt == 0)
            {
                // Create buildings table
                MySqlCommand createTableCommand = new MySqlCommand(
                    "CREATE TABLE buildings (" +
                    "Id INT NOT NULL AUTO_INCREMENT, " +
                    "BuildingName varchar(255), " +
                    "Region VARCHAR(255), " +
                    "BuildingOrder int, " +
                    "BuildingAddress VARCHAR(255), " +
                    "Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, " +
                    "PRIMARY KEY (Id))", connection);
                createTableCommand.ExecuteNonQuery();
            }
        }
        private void Buildings_Load(object sender, EventArgs e)
        {
            list_region.Items.Clear();
            list_region.Items.Add("عمشيت");
            list_region.Items.Add("ساحل علما");
        }
        private bool BuildingExists(string bldgname)
        {
            MySqlCommand command = new MySqlCommand("SELECT COUNT(*) FROM buildings WHERE BuildingName = @bldgname", connection);
            command.Parameters.AddWithValue("@bldgname", bldgname);

            int count = Convert.ToInt32(command.ExecuteScalar());

            return count > 0;
        }
        private void btn_save_Click(object sender, EventArgs e)
        {
            string s_bName, s_bAddress, s_region;
            int i_bOrder;

            s_bName = tb_bdName.Text;
            s_bAddress = tb_bdAddress.Text;
            s_region = list_region.SelectedItem.ToString();
            i_bOrder = Convert.ToInt32(tb_bdOrder.Text);

            // Check if building already exists
            if (BuildingExists(s_bName))
            {
                MessageBox.Show("This building is already taken.");
                return;
            }

            // Insert user data into "Users" table
            MySqlCommand insertCommand = new MySqlCommand(
                "INSERT INTO buildings (BuildingName, Region, BuildingOrder, BuildingAddress) " +
                "VALUES (@bname, @region, @border, @baddress);",
            connection);

            insertCommand.Parameters.AddWithValue("@bname", s_bName);
            insertCommand.Parameters.AddWithValue("@region", s_region);
            insertCommand.Parameters.AddWithValue("@border", i_bOrder);
            insertCommand.Parameters.AddWithValue("@baddress", s_bAddress);
            insertCommand.ExecuteNonQuery();

            MessageBox.Show("Building registered successfully!");

            // Close database connection
            connection.Close();
        }
    }
}

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
    public partial class Customers : UserControl
    {
        //SQLiteConnection connection = new SQLiteConnection("Data Source=Invoice_db.db;Version=3;");
        MySqlConnection connection = new MySqlConnection("server=localhost;port=3306;database=Invoice;User Id=root;password=''");

        public Customers()
        {
            InitializeComponent();
            InitializeDatabase();
        }

        private void InitializeDatabase()
        {
            // Check if the customers table exists, if not create it
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            MySqlCommand cmd = new MySqlCommand("SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'Invoice' AND table_name = 'customers'", connection);

            int cnt = Convert.ToInt32(cmd.ExecuteScalar());

            if (cnt == 0)
            {
            // Create buildings table
            using (MySqlCommand createTableCommand = new MySqlCommand(
                "CREATE TABLE customers (" +
                "ID INTEGER NOT NULL AUTO_INCREMENT, " +
                "FirstName TEXT, " +
                "LastName TEXT, " +
                "Region TEXT, " +
                "BuildingName TEXT, " +
                "Address TEXT, " +
                "MonthlyFee INTEGER NOT NULL, " +
                "Title TEXT, " +
                "StartOfSub Date, " +
                "Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, " +
                "PRIMARY KEY (ID))",
                connection))
                {
                    createTableCommand.ExecuteNonQuery();
                }
            }
            connection.Close();

        }

        private void Customers_Load(object sender, EventArgs e)
        {
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            list_region.Items.Clear();
            list_region.Items.Add("عمشيت");
            list_region.Items.Add("ساحل علما");
            
            tb_sType.Clear();
            tb_sType.Text = "Monthly";

            list_building.Items.Clear();

            MySqlCommand cmd = new MySqlCommand("SELECT BuildingName FROM buildings", connection);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string s_bName = reader["BuildingName"].ToString();
                list_building.Items.Add(s_bName);
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
        private void btn_save_Click(object sender, EventArgs e)
        {
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            string s_fName, s_lName, s_region, s_bldgName, s_address, s_phone, s_title, s_startDate, s_endDate;
            int i_monthlyFee;

            s_fName = tb_fName.Text;
            s_lName = tb_lName.Text;
            s_region = list_region.SelectedItem.ToString();
            s_bldgName = list_building.SelectedItem.ToString();
            s_address = tb_address.Text;
            //s_phone = tb_phone.Text;
            s_title = tb_title.Text;
            s_startDate = dt_start.Value.ToString("yyyy-MM-dd");
            //s_endDate = dt_end.Value.ToString("yyyy-MM-dd");
            i_monthlyFee = Convert.ToInt32(tb_fee.Text);

            // Perform validation for each field
            if (string.IsNullOrEmpty(s_fName))
            {
                MessageBox.Show("Please enter the First Name.");
                return;
            }

            if (string.IsNullOrEmpty(s_lName))
            {
                MessageBox.Show("Please enter the Last Name.");
                return;
            }

            if (string.IsNullOrEmpty(s_region))
            {
                MessageBox.Show("Please select the region.");
                return;
            }
            
            //if (string.IsNullOrEmpty(s_bldgName))
            //{
            //    MessageBox.Show("Please select the Building.");
            //    return;
            //}
            
            if (string.IsNullOrEmpty(s_address))
            {
                MessageBox.Show("Please enter the Address.");
                return;
            }
            
            //if (string.IsNullOrEmpty(s_phone))
            //{
            //    MessageBox.Show("Please enter the Phone Number.");
            //    return;
            //}
            
            if (string.IsNullOrEmpty(tb_fee.Text))
            {
                MessageBox.Show("Please enter the MonthlyFee.");
                return;
            }
            
            if (string.IsNullOrEmpty(s_title))
            {
                MessageBox.Show("Please enter the Title.");
                return;
            }
            
            if (string.IsNullOrEmpty(s_startDate))
            {
                MessageBox.Show("Please select the StartOfSubscription.");
                return;
            }
            
            //if (string.IsNullOrEmpty(s_endDate))
            //{
            //    MessageBox.Show("Please select the EndOfSubscription.");
            //    return;
            //}

            // Check if the customer already exists
            if (CustomerExists(s_fName, s_lName))
            {
                MessageBox.Show("Customer already exists.");
                return;
            }

            // All fields are filled, store the customer information
            try
            {
                string query = "INSERT INTO customers (FirstName, LastName, Region, BuildingName, Address, MonthlyFee, Title, StartOfSub) " +
                    "VALUES (@FirstName, @LastName, @Region, @BuildingName, @Address, @MonthlyFee, @Title, @StartDate)";

                using (MySqlCommand cmd = new MySqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@FirstName", s_fName);
                    cmd.Parameters.AddWithValue("@LastName", s_lName);
                    cmd.Parameters.AddWithValue("@Region", s_region);
                    cmd.Parameters.AddWithValue("@BuildingName", s_bldgName);
                    cmd.Parameters.AddWithValue("@Address", s_address);
                    //cmd.Parameters.AddWithValue("@PhoneNumber", s_phone);
                    cmd.Parameters.AddWithValue("@MonthlyFee", i_monthlyFee);
                    cmd.Parameters.AddWithValue("@Title", s_title);
                    cmd.Parameters.AddWithValue("@StartDate", s_startDate);
                    //cmd.Parameters.AddWithValue("@EndDate", s_endDate);

                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        MessageBox.Show("Customer information saved successfully.");
                        tb_fName.Clear();
                        tb_lName.Clear();
                        list_region.Refresh();
                        list_building.Refresh();
                        tb_address.Clear();
                        tb_sType.Refresh();
                        //tb_phone.Clear();
                        tb_fee.Clear();
                        tb_title.Clear();
                        dt_start.Refresh();
                        //dt_end.Refresh();
                    }
                    else
                    {
                        MessageBox.Show("Failed to save customer information.");
                    }

                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error saving customer information: " + ex.Message);
            }
            finally
            { 
                connection.Close(); 
            }
        }

    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using BCrypt.Net;

namespace Invoice
{
    public partial class Register : Form
    {
        MySqlConnection connection = new MySqlConnection("server=localhost;port=3306;database=Invoice;User Id=root;password=''");
        public Register()
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
            MySqlCommand mySqlCommand = new MySqlCommand("SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'Invoice' AND table_name = 'users'", connection);

            int cnt = Convert.ToInt32(mySqlCommand.ExecuteScalar()); ;

            if (cnt == 0)
            {
                // Create users table
                MySqlCommand createTableCommand = new MySqlCommand(
                    "CREATE TABLE users (" +
                    "Id INT NOT NULL AUTO_INCREMENT, " +
                    "FirstName varchar(255), " +
                    "LastName VARCHAR(255), " +
                    "UserName VARCHAR(255), " +
                    "Password VARCHAR(255), " +
                    "CPY int NOT NULL, " +
                    "Job VARCHAR(255), " +
                    "Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, " +
                    "PRIMARY KEY (Id))", connection);
                createTableCommand.ExecuteNonQuery();
            } 
        }

        private bool UserExists(string username)
        {
            MySqlCommand command = new MySqlCommand("SELECT COUNT(*) FROM users WHERE username = @username", connection);
            command.Parameters.AddWithValue("@username", username);

            int count = Convert.ToInt32(command.ExecuteScalar());

            return count > 0;
        }

        private void Register_Load(object sender, EventArgs e)
        {
            tb_pwd.PasswordChar = '*';
            tb_conPwd.PasswordChar = '*';
        }

        private void btn_register_Click(object sender, EventArgs e)
        {
            string s_fName, s_lName, s_userName, s_pwd, s_conPwd, s_job;
            
            s_fName = tb_fName.Text;
            s_lName = tb_lName.Text;
            s_userName = tb_userName.Text;
            s_pwd = tb_pwd.Text;
            s_conPwd = tb_conPwd.Text;
            s_job = tb_job.Text;
            int i_cpy = Convert.ToInt32(tb_cpy.Text);

            // Check if username contains only letters and numbers
            if (!System.Text.RegularExpressions.Regex.IsMatch(s_userName, "^[a-zA-Z0-9]+$"))
            {
                MessageBox.Show("Username can only contain letters and numbers.");
                return;
            }

            // Check if password matches confirm password
            if (s_pwd != s_conPwd)
            {
                MessageBox.Show("Passwords do not match.\n Please retype again!");
                tb_pwd.Clear();
                tb_conPwd.Clear();
                return;
            }

            // Check if user already exists
            if (UserExists(s_userName))
            {
                MessageBox.Show("This username is already taken.");
                return;
            }

            // Encrypt the password
            string encryptedPassword = BCrypt.Net.BCrypt.HashPassword(s_pwd);


            // Insert user data into "Users" table
            MySqlCommand insertUserCommand = new MySqlCommand(
                "INSERT INTO users (FirstName, LastName, UserName, Password, CPY, Job) " +
                "VALUES (@firstname, @lastname, @username, @password, @cpy, @job);",
            connection);

            insertUserCommand.Parameters.AddWithValue("@firstname", s_fName);
            insertUserCommand.Parameters.AddWithValue("@lastname", s_lName);
            insertUserCommand.Parameters.AddWithValue("@username", s_userName);
            insertUserCommand.Parameters.AddWithValue("@password", encryptedPassword);
            insertUserCommand.Parameters.AddWithValue("@cpy", i_cpy);
            insertUserCommand.Parameters.AddWithValue("@job", s_job);
            insertUserCommand.ExecuteNonQuery();

            MessageBox.Show("User registered successfully!");
           
            // Close database connection
            connection.Close();
        }

        private void lb_login_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hide();
            Login login = new Login();
            login.Show();
        }
    }
}

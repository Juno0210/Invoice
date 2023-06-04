using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SQLite;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BCrypt.Net;

namespace Invoice
{
    public partial class Login : Form
    {
        SQLiteConnection connection = new SQLiteConnection("Data Source=Invoice_db.db;Version=3;");

        public Login()
        {
            InitializeComponent();
        }

        private void btn_login_Click(object sender, EventArgs e)
        {
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            string s_userName, s_password;

            s_userName = tb_username.Text;
            s_password = tb_pwd.Text;

            // Authenticate a user
            SQLiteCommand cmd = new SQLiteCommand("SELECT * FROM users WHERE UserName = @username", connection);
            cmd.Parameters.AddWithValue("@username", s_userName);
            
            SQLiteDataReader reader = cmd.ExecuteReader();
            //string storedPassword;
            if (reader.Read())
            {
                string storedPassword = reader["Password"].ToString();
                
                if (BCrypt.Net.BCrypt.Verify(s_password, storedPassword))
                {
                    // Passwords match, go to main form
                    MainMenu main = new MainMenu();
                    main.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Incorrect password");
                    tb_username.Refresh();
                    tb_pwd.Clear();
                }
            } else
            {
                MessageBox.Show("User not found!");
                tb_username.Clear();
                tb_pwd.Clear();
                return;
            }
            

            connection.Close();
        }

        private void lb_register_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Register register = new Register();
            register.Show();
            this.Hide();
        }

        private void Login_Load(object sender, EventArgs e)
        {
            tb_pwd.PasswordChar = '*';
            
        }
    }
}

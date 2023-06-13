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
  public partial class Buildings : UserControl
  {
    //MySqlConnection connection = new MySqlConnection("Data Source=Invoice_db.db;Version=3;");
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

            // Check if the buildings table exists, if not create it
            //MySqlCommand cmd = new MySqlCommand("SELECT name FROM sqlite_master WHERE type='table' AND name='buildings'", connection);
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
      if (connection.State != ConnectionState.Open)
      {
        connection.Open();
      }

      string s_bName, s_bAddress, s_region;

      s_bName = tb_bdName.Text;
      s_bAddress = tb_bdAddress.Text;
      s_region = list_region.SelectedItem.ToString();

      // Check if building already exists
      if (BuildingExists(s_bName))
      {
        MessageBox.Show("This building is already taken.");
        return;
      }

      // Insert building data into "buildings" table
      MySqlCommand insertCommand = new MySqlCommand(
          "INSERT INTO buildings (BuildingName, Region, BuildingAddress) " +
          "VALUES (@bname, @region, @baddress);",
      connection);

      insertCommand.Parameters.AddWithValue("@bname", s_bName);
      insertCommand.Parameters.AddWithValue("@region", s_region);
      insertCommand.Parameters.AddWithValue("@baddress", s_bAddress);
      insertCommand.ExecuteNonQuery();

      MessageBox.Show("Building registered successfully!");

      tb_bdName.Clear();
      tb_bdAddress.Clear();
      list_region.Refresh();

      // Close database connection
      connection.Close();
    }
  }
}

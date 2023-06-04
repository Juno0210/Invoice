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

namespace Invoice
{
  public partial class Buildings : UserControl
  {
    SQLiteConnection connection = new SQLiteConnection("Data Source=Invoice_db.db;Version=3;");

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
      SQLiteCommand cmd = new SQLiteCommand("SELECT name FROM sqlite_master WHERE type='table' AND name='buildings'", connection);

      int cnt = Convert.ToInt32(cmd.ExecuteScalar()); ;

      if (cnt == 0)
      {
        // Create buildings table
        SQLiteCommand createTableCommand = new SQLiteCommand(
            "CREATE TABLE buildings (" +
            "ID INTEGER PRIMARY KEY AUTOINCREMENT, " +
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
      SQLiteCommand command = new SQLiteCommand("SELECT COUNT(*) FROM buildings WHERE BuildingName = @bldgname", connection);
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

      // Insert user data into "Users" table
      SQLiteCommand insertCommand = new SQLiteCommand(
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

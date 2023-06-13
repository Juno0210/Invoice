using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Invoice
{
    public partial class MainMenu : Form
    {
        public MainMenu()
        {
            InitializeComponent();
        }

        private void customersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Customers customers = new Customers();

            customers.Location = new Point(
                (p_main.Width - customers.Width) / 2,
                (p_main.Height - customers.Height) / 2
            );

            p_main.Controls.Clear();
            p_main.Controls.Add(customers);
        }

        private void paymentsToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void invoiceToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // Create a new instance of the InvoicesForm
            CreateInvoice invoicesForm = new CreateInvoice();

            // Set the TopLevel property to false
            invoicesForm.TopLevel = false;
            invoicesForm.FormBorderStyle = FormBorderStyle.None;
            invoicesForm.Dock = DockStyle.Fill;
            // Add the InvoicesForm to the panel
            p_main.Controls.Clear();
            p_main.Controls.Add(invoicesForm);
            invoicesForm.Show();
        }

        private void unpaidSubscriptorsToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void usersToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void createBuildingsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Buildings buildings = new Buildings();
            //buildings.Dock = DockStyle.Fill;
            buildings.Location = new Point(
                (p_main.Width - buildings.Width) / 2,
                (p_main.Height - buildings.Height) / 2
            );

            p_main.Controls.Clear();
            p_main.Controls.Add(buildings);
        }

        private void listOfBuildingsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            BuildingsList buildingsList = new BuildingsList();
            //buildingsList.Dock = DockStyle.Fill;
            buildingsList.Location = new Point(
                (p_main.Width - buildingsList.Width) / 2,
                (p_main.Height - buildingsList.Height) / 2
            );
            p_main.Controls.Clear();
            p_main.Controls.Add(buildingsList);

        }

        private void listOfCustomersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            CustomersList customersList = new CustomersList();

            customersList.Location = new Point(
                (p_main.Width - customersList.Width) / 2,
                (p_main.Height - customersList.Height) / 2
            );
            p_main.Controls.Clear();
            p_main.Controls.Add(customersList);
        }
    }
}

using System;
using System.Net;
using System.Net.Sockets;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QRCoder;

namespace Invoice
{
    public partial class CreateInvoice : Form
    {
        public CreateInvoice()
        {
            InitializeComponent();
            
        }

        private void Invoice_Load(object sender, EventArgs e)
        {
            list_region.Items.Clear();
            list_region.Items.Add("عمشيت");
            list_region.Items.Add("ساحل علما");

            // Create a TCP listener
            //TcpListener server = new TcpListener(IPAddress.Parse("188.43.14.13"), 8888);
            //server.Start();

            //Console.WriteLine("Server listening...");
        }

        private void btn_gen_Click(object sender, EventArgs e)
        {
           string s_name, s_amount, s_date, s_region, s_timestamp;
            s_name = "CutomerName: " + tb_cuName.Text;
            s_amount = "Pay amount: " + tb_amount.Text;
            s_date = "Pay Date: " + m_calendar.SelectionStart.ToString("MM/yyyy");
            s_region = "Region: " + list_region.SelectedItem.ToString();
            s_timestamp = DateTime.Now.ToString();
            //MessageBox.Show(s_timestamp);

            string inputData = $"{s_name}, {s_amount}, {s_date}, {s_region}, {s_timestamp}";
            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeData qrCodeData = qrGenerator.CreateQrCode(inputData, QRCodeGenerator.ECCLevel.Q);
            QRCode qrCode = new QRCode(qrCodeData);
            Bitmap qrImg = qrCode.GetGraphic(5);
            pb_QR.Image = qrImg;

        }
    }
}

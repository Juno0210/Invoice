namespace Invoice
{
    partial class CreateInvoice
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tb_cuName = new System.Windows.Forms.TextBox();
            this.lb_cuName = new System.Windows.Forms.Label();
            this.m_calendar = new System.Windows.Forms.MonthCalendar();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_gen = new System.Windows.Forms.Button();
            this.list_region = new System.Windows.Forms.ComboBox();
            this.tb_amount = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.pb_QR = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.pb_QR)).BeginInit();
            this.SuspendLayout();
            // 
            // tb_cuName
            // 
            this.tb_cuName.Location = new System.Drawing.Point(139, 44);
            this.tb_cuName.Name = "tb_cuName";
            this.tb_cuName.Size = new System.Drawing.Size(116, 20);
            this.tb_cuName.TabIndex = 0;
            // 
            // lb_cuName
            // 
            this.lb_cuName.AutoSize = true;
            this.lb_cuName.Location = new System.Drawing.Point(54, 47);
            this.lb_cuName.Name = "lb_cuName";
            this.lb_cuName.Size = new System.Drawing.Size(82, 13);
            this.lb_cuName.TabIndex = 1;
            this.lb_cuName.Text = "CustomerName:";
            // 
            // m_calendar
            // 
            this.m_calendar.Location = new System.Drawing.Point(41, 125);
            this.m_calendar.Name = "m_calendar";
            this.m_calendar.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(57, 313);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Region:";
            // 
            // btn_gen
            // 
            this.btn_gen.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_gen.Location = new System.Drawing.Point(399, 311);
            this.btn_gen.Name = "btn_gen";
            this.btn_gen.Size = new System.Drawing.Size(125, 35);
            this.btn_gen.TabIndex = 6;
            this.btn_gen.Text = "Generate";
            this.btn_gen.UseVisualStyleBackColor = true;
            this.btn_gen.Click += new System.EventHandler(this.btn_gen_Click);
            // 
            // list_region
            // 
            this.list_region.FormattingEnabled = true;
            this.list_region.Location = new System.Drawing.Point(102, 311);
            this.list_region.Name = "list_region";
            this.list_region.Size = new System.Drawing.Size(121, 21);
            this.list_region.TabIndex = 7;
            // 
            // tb_amount
            // 
            this.tb_amount.Location = new System.Drawing.Point(139, 84);
            this.tb_amount.Name = "tb_amount";
            this.tb_amount.Size = new System.Drawing.Size(116, 20);
            this.tb_amount.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(87, 87);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(46, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Amount:";
            // 
            // pb_QR
            // 
            this.pb_QR.Location = new System.Drawing.Point(305, 22);
            this.pb_QR.Name = "pb_QR";
            this.pb_QR.Size = new System.Drawing.Size(280, 280);
            this.pb_QR.TabIndex = 8;
            this.pb_QR.TabStop = false;
            // 
            // CreateInvoice
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(630, 383);
            this.Controls.Add(this.pb_QR);
            this.Controls.Add(this.list_region);
            this.Controls.Add(this.btn_gen);
            this.Controls.Add(this.m_calendar);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.lb_cuName);
            this.Controls.Add(this.tb_amount);
            this.Controls.Add(this.tb_cuName);
            this.Name = "CreateInvoice";
            this.Text = "Create Invoice";
            this.Load += new System.EventHandler(this.Invoice_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pb_QR)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox tb_cuName;
        private System.Windows.Forms.Label lb_cuName;
        private System.Windows.Forms.MonthCalendar m_calendar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btn_gen;
        private System.Windows.Forms.ComboBox list_region;
        private System.Windows.Forms.TextBox tb_amount;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.PictureBox pb_QR;
    }
}


namespace Invoice
{
    partial class MainMenu
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
            this.menuBar = new System.Windows.Forms.MenuStrip();
            this.customersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.paymentsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.buildingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.createBuildingsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.collectionDataToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.invoiceToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.unpaidSubscriptorsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.totalCollectionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.usersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.p_main = new System.Windows.Forms.Panel();
            this.menuBar.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuBar
            // 
            this.menuBar.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.customersToolStripMenuItem,
            this.paymentsToolStripMenuItem,
            this.buildingsToolStripMenuItem,
            this.collectionDataToolStripMenuItem,
            this.invoiceToolStripMenuItem,
            this.unpaidSubscriptorsToolStripMenuItem,
            this.totalCollectionToolStripMenuItem,
            this.usersToolStripMenuItem});
            this.menuBar.Location = new System.Drawing.Point(0, 0);
            this.menuBar.Name = "menuBar";
            this.menuBar.Size = new System.Drawing.Size(755, 24);
            this.menuBar.TabIndex = 0;
            this.menuBar.Text = "MenuBar";
            // 
            // customersToolStripMenuItem
            // 
            this.customersToolStripMenuItem.Name = "customersToolStripMenuItem";
            this.customersToolStripMenuItem.Size = new System.Drawing.Size(76, 20);
            this.customersToolStripMenuItem.Text = "Customers";
            this.customersToolStripMenuItem.Click += new System.EventHandler(this.customersToolStripMenuItem_Click);
            // 
            // paymentsToolStripMenuItem
            // 
            this.paymentsToolStripMenuItem.Name = "paymentsToolStripMenuItem";
            this.paymentsToolStripMenuItem.Size = new System.Drawing.Size(71, 20);
            this.paymentsToolStripMenuItem.Text = "Payments";
            this.paymentsToolStripMenuItem.Click += new System.EventHandler(this.paymentsToolStripMenuItem_Click);
            // 
            // buildingsToolStripMenuItem
            // 
            this.buildingsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.createBuildingsToolStripMenuItem});
            this.buildingsToolStripMenuItem.Name = "buildingsToolStripMenuItem";
            this.buildingsToolStripMenuItem.Size = new System.Drawing.Size(68, 20);
            this.buildingsToolStripMenuItem.Text = "Buildings";
            // 
            // createBuildingsToolStripMenuItem
            // 
            this.createBuildingsToolStripMenuItem.Name = "createBuildingsToolStripMenuItem";
            this.createBuildingsToolStripMenuItem.Size = new System.Drawing.Size(180, 22);
            this.createBuildingsToolStripMenuItem.Text = "Create Buildings";
            this.createBuildingsToolStripMenuItem.Click += new System.EventHandler(this.createBuildingsToolStripMenuItem_Click);
            // 
            // collectionDataToolStripMenuItem
            // 
            this.collectionDataToolStripMenuItem.Name = "collectionDataToolStripMenuItem";
            this.collectionDataToolStripMenuItem.Size = new System.Drawing.Size(100, 20);
            this.collectionDataToolStripMenuItem.Text = "Collection Data";
            this.collectionDataToolStripMenuItem.Click += new System.EventHandler(this.collectionDataToolStripMenuItem_Click);
            // 
            // invoiceToolStripMenuItem
            // 
            this.invoiceToolStripMenuItem.Name = "invoiceToolStripMenuItem";
            this.invoiceToolStripMenuItem.Size = new System.Drawing.Size(57, 20);
            this.invoiceToolStripMenuItem.Text = "Invoice";
            this.invoiceToolStripMenuItem.Click += new System.EventHandler(this.invoiceToolStripMenuItem_Click);
            // 
            // unpaidSubscriptorsToolStripMenuItem
            // 
            this.unpaidSubscriptorsToolStripMenuItem.Name = "unpaidSubscriptorsToolStripMenuItem";
            this.unpaidSubscriptorsToolStripMenuItem.Size = new System.Drawing.Size(131, 20);
            this.unpaidSubscriptorsToolStripMenuItem.Text = "Unpaid Subscriptions";
            this.unpaidSubscriptorsToolStripMenuItem.Click += new System.EventHandler(this.unpaidSubscriptorsToolStripMenuItem_Click);
            // 
            // totalCollectionToolStripMenuItem
            // 
            this.totalCollectionToolStripMenuItem.Name = "totalCollectionToolStripMenuItem";
            this.totalCollectionToolStripMenuItem.Size = new System.Drawing.Size(101, 20);
            this.totalCollectionToolStripMenuItem.Text = "Total Collection";
            this.totalCollectionToolStripMenuItem.Click += new System.EventHandler(this.totalCollectionToolStripMenuItem_Click);
            // 
            // usersToolStripMenuItem
            // 
            this.usersToolStripMenuItem.Name = "usersToolStripMenuItem";
            this.usersToolStripMenuItem.Size = new System.Drawing.Size(47, 20);
            this.usersToolStripMenuItem.Text = "Users";
            this.usersToolStripMenuItem.Click += new System.EventHandler(this.usersToolStripMenuItem_Click);
            // 
            // p_main
            // 
            this.p_main.Location = new System.Drawing.Point(12, 35);
            this.p_main.Name = "p_main";
            this.p_main.Size = new System.Drawing.Size(731, 361);
            this.p_main.TabIndex = 1;
            // 
            // MainMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(755, 408);
            this.Controls.Add(this.p_main);
            this.Controls.Add(this.menuBar);
            this.MainMenuStrip = this.menuBar;
            this.Name = "MainMenu";
            this.Text = "MainMenu";
            this.menuBar.ResumeLayout(false);
            this.menuBar.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuBar;
        private System.Windows.Forms.ToolStripMenuItem customersToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem paymentsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem buildingsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem collectionDataToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem invoiceToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem unpaidSubscriptorsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem totalCollectionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem usersToolStripMenuItem;
        private System.Windows.Forms.Panel p_main;
        private System.Windows.Forms.ToolStripMenuItem createBuildingsToolStripMenuItem;
    }
}
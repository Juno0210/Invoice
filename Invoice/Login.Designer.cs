namespace Invoice
{
    partial class Login
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
            this.lb_username = new System.Windows.Forms.Label();
            this.lb_pwd = new System.Windows.Forms.Label();
            this.btn_login = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.lb_register = new System.Windows.Forms.LinkLabel();
            this.tb_pwd = new System.Windows.Forms.TextBox();
            this.tb_username = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // lb_username
            // 
            this.lb_username.AutoSize = true;
            this.lb_username.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_username.Location = new System.Drawing.Point(61, 61);
            this.lb_username.Name = "lb_username";
            this.lb_username.Size = new System.Drawing.Size(79, 17);
            this.lb_username.TabIndex = 1;
            this.lb_username.Text = "UserName:";
            // 
            // lb_pwd
            // 
            this.lb_pwd.AutoSize = true;
            this.lb_pwd.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_pwd.Location = new System.Drawing.Point(67, 117);
            this.lb_pwd.Name = "lb_pwd";
            this.lb_pwd.Size = new System.Drawing.Size(73, 17);
            this.lb_pwd.TabIndex = 1;
            this.lb_pwd.Text = "Password:";
            // 
            // btn_login
            // 
            this.btn_login.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_login.Location = new System.Drawing.Point(140, 170);
            this.btn_login.Name = "btn_login";
            this.btn_login.Size = new System.Drawing.Size(125, 35);
            this.btn_login.TabIndex = 2;
            this.btn_login.Text = "Login";
            this.btn_login.UseVisualStyleBackColor = true;
            this.btn_login.Click += new System.EventHandler(this.btn_login_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(69, 231);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(178, 17);
            this.label1.TabIndex = 3;
            this.label1.Text = "Don\'t you have account? - ";
            // 
            // lb_register
            // 
            this.lb_register.AutoSize = true;
            this.lb_register.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_register.Location = new System.Drawing.Point(246, 231);
            this.lb_register.Name = "lb_register";
            this.lb_register.Size = new System.Drawing.Size(88, 20);
            this.lb_register.TabIndex = 4;
            this.lb_register.TabStop = true;
            this.lb_register.Text = "Create one";
            this.lb_register.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lb_register_LinkClicked);
            // 
            // tb_pwd
            // 
            this.tb_pwd.Location = new System.Drawing.Point(146, 116);
            this.tb_pwd.Name = "tb_pwd";
            this.tb_pwd.Size = new System.Drawing.Size(162, 20);
            this.tb_pwd.TabIndex = 5;
            // 
            // tb_username
            // 
            this.tb_username.Location = new System.Drawing.Point(146, 61);
            this.tb_username.Name = "tb_username";
            this.tb_username.Size = new System.Drawing.Size(162, 20);
            this.tb_username.TabIndex = 5;
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(420, 282);
            this.Controls.Add(this.tb_username);
            this.Controls.Add(this.tb_pwd);
            this.Controls.Add(this.lb_register);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_login);
            this.Controls.Add(this.lb_pwd);
            this.Controls.Add(this.lb_username);
            this.Name = "Login";
            this.Text = "Login";
            this.Load += new System.EventHandler(this.Login_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label lb_username;
        private System.Windows.Forms.Label lb_pwd;
        private System.Windows.Forms.Button btn_login;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.LinkLabel lb_register;
        private System.Windows.Forms.TextBox tb_pwd;
        private System.Windows.Forms.TextBox tb_username;
    }
}
namespace Invoice
{
    partial class Register
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
            this.lb_fName = new System.Windows.Forms.Label();
            this.tb_fName = new System.Windows.Forms.TextBox();
            this.lb_lName = new System.Windows.Forms.Label();
            this.tb_lName = new System.Windows.Forms.TextBox();
            this.lb_userName = new System.Windows.Forms.Label();
            this.tb_userName = new System.Windows.Forms.TextBox();
            this.lb_pwd = new System.Windows.Forms.Label();
            this.tb_pwd = new System.Windows.Forms.TextBox();
            this.lb_confirmPwd = new System.Windows.Forms.Label();
            this.tb_conPwd = new System.Windows.Forms.TextBox();
            this.lb_job = new System.Windows.Forms.Label();
            this.tb_job = new System.Windows.Forms.TextBox();
            this.btn_register = new System.Windows.Forms.Button();
            this.lb_login = new System.Windows.Forms.LinkLabel();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lb_fName
            // 
            this.lb_fName.AutoSize = true;
            this.lb_fName.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_fName.Location = new System.Drawing.Point(72, 32);
            this.lb_fName.Name = "lb_fName";
            this.lb_fName.Size = new System.Drawing.Size(80, 17);
            this.lb_fName.TabIndex = 0;
            this.lb_fName.Text = "First Name:";
            // 
            // tb_fName
            // 
            this.tb_fName.Location = new System.Drawing.Point(156, 32);
            this.tb_fName.Name = "tb_fName";
            this.tb_fName.Size = new System.Drawing.Size(132, 20);
            this.tb_fName.TabIndex = 1;
            // 
            // lb_lName
            // 
            this.lb_lName.AutoSize = true;
            this.lb_lName.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_lName.Location = new System.Drawing.Point(72, 72);
            this.lb_lName.Name = "lb_lName";
            this.lb_lName.Size = new System.Drawing.Size(80, 17);
            this.lb_lName.TabIndex = 0;
            this.lb_lName.Text = "Last Name:";
            // 
            // tb_lName
            // 
            this.tb_lName.Location = new System.Drawing.Point(156, 72);
            this.tb_lName.Name = "tb_lName";
            this.tb_lName.Size = new System.Drawing.Size(132, 20);
            this.tb_lName.TabIndex = 1;
            // 
            // lb_userName
            // 
            this.lb_userName.AutoSize = true;
            this.lb_userName.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_userName.Location = new System.Drawing.Point(72, 114);
            this.lb_userName.Name = "lb_userName";
            this.lb_userName.Size = new System.Drawing.Size(79, 17);
            this.lb_userName.TabIndex = 0;
            this.lb_userName.Text = "UserName:";
            // 
            // tb_userName
            // 
            this.tb_userName.Location = new System.Drawing.Point(156, 114);
            this.tb_userName.Name = "tb_userName";
            this.tb_userName.Size = new System.Drawing.Size(132, 20);
            this.tb_userName.TabIndex = 1;
            // 
            // lb_pwd
            // 
            this.lb_pwd.AutoSize = true;
            this.lb_pwd.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_pwd.Location = new System.Drawing.Point(75, 156);
            this.lb_pwd.Name = "lb_pwd";
            this.lb_pwd.Size = new System.Drawing.Size(73, 17);
            this.lb_pwd.TabIndex = 0;
            this.lb_pwd.Text = "Password:";
            // 
            // tb_pwd
            // 
            this.tb_pwd.Location = new System.Drawing.Point(156, 156);
            this.tb_pwd.Name = "tb_pwd";
            this.tb_pwd.Size = new System.Drawing.Size(132, 20);
            this.tb_pwd.TabIndex = 1;
            // 
            // lb_confirmPwd
            // 
            this.lb_confirmPwd.AutoSize = true;
            this.lb_confirmPwd.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_confirmPwd.Location = new System.Drawing.Point(26, 197);
            this.lb_confirmPwd.Name = "lb_confirmPwd";
            this.lb_confirmPwd.Size = new System.Drawing.Size(121, 17);
            this.lb_confirmPwd.TabIndex = 0;
            this.lb_confirmPwd.Text = "ConfirmPassword:";
            // 
            // tb_conPwd
            // 
            this.tb_conPwd.Location = new System.Drawing.Point(156, 197);
            this.tb_conPwd.Name = "tb_conPwd";
            this.tb_conPwd.Size = new System.Drawing.Size(132, 20);
            this.tb_conPwd.TabIndex = 1;
            // 
            // lb_job
            // 
            this.lb_job.AutoSize = true;
            this.lb_job.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_job.Location = new System.Drawing.Point(106, 237);
            this.lb_job.Name = "lb_job";
            this.lb_job.Size = new System.Drawing.Size(35, 17);
            this.lb_job.TabIndex = 0;
            this.lb_job.Text = "Job:";
            // 
            // tb_job
            // 
            this.tb_job.Location = new System.Drawing.Point(156, 237);
            this.tb_job.Name = "tb_job";
            this.tb_job.Size = new System.Drawing.Size(132, 20);
            this.tb_job.TabIndex = 1;
            // 
            // btn_register
            // 
            this.btn_register.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_register.Location = new System.Drawing.Point(111, 277);
            this.btn_register.Name = "btn_register";
            this.btn_register.Size = new System.Drawing.Size(125, 35);
            this.btn_register.TabIndex = 2;
            this.btn_register.Text = "Register";
            this.btn_register.UseVisualStyleBackColor = true;
            this.btn_register.Click += new System.EventHandler(this.btn_register_Click);
            // 
            // lb_login
            // 
            this.lb_login.AutoSize = true;
            this.lb_login.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_login.Location = new System.Drawing.Point(237, 335);
            this.lb_login.Name = "lb_login";
            this.lb_login.Size = new System.Drawing.Size(48, 20);
            this.lb_login.TabIndex = 6;
            this.lb_login.TabStop = true;
            this.lb_login.Text = "Login";
            this.lb_login.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.lb_login_LinkClicked);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(70, 336);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(166, 17);
            this.label1.TabIndex = 5;
            this.label1.Text = "Already have account? - ";
            // 
            // Register
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(357, 378);
            this.Controls.Add(this.lb_login);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_register);
            this.Controls.Add(this.tb_job);
            this.Controls.Add(this.lb_job);
            this.Controls.Add(this.tb_conPwd);
            this.Controls.Add(this.lb_confirmPwd);
            this.Controls.Add(this.tb_pwd);
            this.Controls.Add(this.lb_pwd);
            this.Controls.Add(this.tb_userName);
            this.Controls.Add(this.lb_userName);
            this.Controls.Add(this.tb_lName);
            this.Controls.Add(this.lb_lName);
            this.Controls.Add(this.tb_fName);
            this.Controls.Add(this.lb_fName);
            this.Name = "Register";
            this.Text = "Register";
            this.Load += new System.EventHandler(this.Register_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lb_fName;
        private System.Windows.Forms.TextBox tb_fName;
        private System.Windows.Forms.Label lb_lName;
        private System.Windows.Forms.TextBox tb_lName;
        private System.Windows.Forms.Label lb_userName;
        private System.Windows.Forms.TextBox tb_userName;
        private System.Windows.Forms.Label lb_pwd;
        private System.Windows.Forms.TextBox tb_pwd;
        private System.Windows.Forms.Label lb_confirmPwd;
        private System.Windows.Forms.TextBox tb_conPwd;
        private System.Windows.Forms.Label lb_job;
        private System.Windows.Forms.TextBox tb_job;
        private System.Windows.Forms.Button btn_register;
        private System.Windows.Forms.LinkLabel lb_login;
        private System.Windows.Forms.Label label1;
    }
}
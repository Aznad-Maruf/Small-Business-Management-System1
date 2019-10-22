namespace SmallBusinessManagementSystem.UI
{
    partial class CategoryUI
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
            this.components = new System.ComponentModel.Container();
            this.label2 = new System.Windows.Forms.Label();
            this.categoryCodeTextBox = new System.Windows.Forms.TextBox();
            this.categoryNameTextBox = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.categorySaveButton = new System.Windows.Forms.Button();
            this.categorySerchTextBox = new System.Windows.Forms.TextBox();
            this.categorySearchButton = new System.Windows.Forms.Button();
            this.showCategoryDataGridView = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.codeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Action = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.categoryModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.updateCategoryBbutton = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.showCategoryDataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoryModelBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(33, 38);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(79, 31);
            this.label2.TabIndex = 1;
            this.label2.Text = "Code";
            // 
            // categoryCodeTextBox
            // 
            this.categoryCodeTextBox.Location = new System.Drawing.Point(300, 38);
            this.categoryCodeTextBox.Name = "categoryCodeTextBox";
            this.categoryCodeTextBox.Size = new System.Drawing.Size(284, 20);
            this.categoryCodeTextBox.TabIndex = 2;
            // 
            // categoryNameTextBox
            // 
            this.categoryNameTextBox.Location = new System.Drawing.Point(300, 113);
            this.categoryNameTextBox.Name = "categoryNameTextBox";
            this.categoryNameTextBox.Size = new System.Drawing.Size(284, 20);
            this.categoryNameTextBox.TabIndex = 4;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(33, 101);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(204, 31);
            this.label3.TabIndex = 3;
            this.label3.Text = "Category Name";
            // 
            // categorySaveButton
            // 
            this.categorySaveButton.BackColor = System.Drawing.Color.SkyBlue;
            this.categorySaveButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.categorySaveButton.ForeColor = System.Drawing.Color.Black;
            this.categorySaveButton.Location = new System.Drawing.Point(300, 152);
            this.categorySaveButton.Name = "categorySaveButton";
            this.categorySaveButton.Size = new System.Drawing.Size(106, 44);
            this.categorySaveButton.TabIndex = 5;
            this.categorySaveButton.Text = "Save";
            this.categorySaveButton.UseVisualStyleBackColor = false;
            this.categorySaveButton.Click += new System.EventHandler(this.categorySaveButton_Click);
            // 
            // categorySerchTextBox
            // 
            this.categorySerchTextBox.Location = new System.Drawing.Point(614, 49);
            this.categorySerchTextBox.Name = "categorySerchTextBox";
            this.categorySerchTextBox.Size = new System.Drawing.Size(171, 20);
            this.categorySerchTextBox.TabIndex = 6;
            // 
            // categorySearchButton
            // 
            this.categorySearchButton.BackColor = System.Drawing.Color.SkyBlue;
            this.categorySearchButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.categorySearchButton.ForeColor = System.Drawing.Color.Black;
            this.categorySearchButton.Location = new System.Drawing.Point(614, 102);
            this.categorySearchButton.Name = "categorySearchButton";
            this.categorySearchButton.Size = new System.Drawing.Size(106, 36);
            this.categorySearchButton.TabIndex = 7;
            this.categorySearchButton.Text = "Search";
            this.categorySearchButton.UseVisualStyleBackColor = false;
            this.categorySearchButton.Click += new System.EventHandler(this.categorySearchButton_Click);
            // 
            // showCategoryDataGridView
            // 
            this.showCategoryDataGridView.AllowUserToDeleteRows = false;
            this.showCategoryDataGridView.AutoGenerateColumns = false;
            this.showCategoryDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.showCategoryDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.codeDataGridViewTextBoxColumn,
            this.nameDataGridViewTextBoxColumn,
            this.Action});
            this.showCategoryDataGridView.DataSource = this.categoryModelBindingSource;
            this.showCategoryDataGridView.Location = new System.Drawing.Point(125, 226);
            this.showCategoryDataGridView.Name = "showCategoryDataGridView";
            this.showCategoryDataGridView.ReadOnly = true;
            this.showCategoryDataGridView.Size = new System.Drawing.Size(459, 189);
            this.showCategoryDataGridView.TabIndex = 8;
            this.showCategoryDataGridView.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.showCategoryDataGridView_CellDoubleClick);
            this.showCategoryDataGridView.RowPostPaint += new System.Windows.Forms.DataGridViewRowPostPaintEventHandler(this.showCategoryDataGridView_RowPostPaint);
            // 
            // Column1
            // 
            this.Column1.HeaderText = "SI";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // codeDataGridViewTextBoxColumn
            // 
            this.codeDataGridViewTextBoxColumn.DataPropertyName = "Code";
            this.codeDataGridViewTextBoxColumn.HeaderText = "Code";
            this.codeDataGridViewTextBoxColumn.Name = "codeDataGridViewTextBoxColumn";
            this.codeDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // nameDataGridViewTextBoxColumn
            // 
            this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
            this.nameDataGridViewTextBoxColumn.HeaderText = "Name";
            this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
            this.nameDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // Action
            // 
            this.Action.HeaderText = "Action";
            this.Action.Name = "Action";
            this.Action.ReadOnly = true;
            // 
            // categoryModelBindingSource
            // 
            this.categoryModelBindingSource.DataSource = typeof(SmallBusinessManagementSystem.Model.CategoryModel);
            // 
            // updateCategoryBbutton
            // 
            this.updateCategoryBbutton.BackColor = System.Drawing.Color.SkyBlue;
            this.updateCategoryBbutton.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.updateCategoryBbutton.ForeColor = System.Drawing.Color.Black;
            this.updateCategoryBbutton.Location = new System.Drawing.Point(478, 152);
            this.updateCategoryBbutton.Name = "updateCategoryBbutton";
            this.updateCategoryBbutton.Size = new System.Drawing.Size(106, 44);
            this.updateCategoryBbutton.TabIndex = 9;
            this.updateCategoryBbutton.Text = "Update";
            this.updateCategoryBbutton.UseVisualStyleBackColor = false;
            this.updateCategoryBbutton.Click += new System.EventHandler(this.updateCategoryBbutton_Click);
            // 
            // CategoryUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(870, 477);
            this.Controls.Add(this.updateCategoryBbutton);
            this.Controls.Add(this.showCategoryDataGridView);
            this.Controls.Add(this.categorySearchButton);
            this.Controls.Add(this.categorySerchTextBox);
            this.Controls.Add(this.categorySaveButton);
            this.Controls.Add(this.categoryNameTextBox);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.categoryCodeTextBox);
            this.Controls.Add(this.label2);
            this.Name = "CategoryUI";
            this.Text = "CategoryUI";
            this.Load += new System.EventHandler(this.CategoryUI_Load);
            ((System.ComponentModel.ISupportInitialize)(this.showCategoryDataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoryModelBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox categoryCodeTextBox;
        private System.Windows.Forms.TextBox categoryNameTextBox;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button categorySaveButton;
        private System.Windows.Forms.TextBox categorySerchTextBox;
        private System.Windows.Forms.Button categorySearchButton;
        private System.Windows.Forms.DataGridView showCategoryDataGridView;
        private System.Windows.Forms.BindingSource categoryModelBindingSource;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn codeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn Action;
        private System.Windows.Forms.Button updateCategoryBbutton;
    }
}
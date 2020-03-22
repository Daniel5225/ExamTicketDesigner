using Microsoft.Win32;
using System;
using System.Diagnostics;
using System.Windows;
using System.IO;


namespace ExamTicketDesigner
{
    /// <summary>
    /// Interaction logic for HomeWindow.xaml
    /// </summary>
    public partial class HomeWindow : Window
    {
        string pathtofile = "";
        string[] questions;
        public HomeWindow()
        {
            InitializeComponent();
        }

        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Window_Initialized(object sender, System.EventArgs e)
        {
            System.Diagnostics.Process proc = System.Diagnostics.Process.Start("Help\\news.exe"); //Запускаем скрипт парсинга новостей
            proc.WaitForExit();//и ждем, когда он завершит свою работу 
        }

        private void PathButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            fileDialog.Multiselect = false;
            fileDialog.Filter = "Текстовые файлы|*.txt";
            fileDialog.DefaultExt = ".txt";
            Nullable<bool> dialogOK = fileDialog.ShowDialog();

            if (dialogOK == true)
            {
                pathtofile = fileDialog.FileName.Trim();
            }
        }

        private void StartButton_Click(object sender, RoutedEventArgs e)
        {
            int qnumber = Convert.ToInt16(Qnumber1.Text) + Convert.ToInt16(QNumber2.Text);
            if (qnumber >= 4 || qnumber <=0)
            {
                MessageBox.Show("Максимальное количество вопросов - 3");
            }
            else
            {                
                questions = File.ReadAllLines(@"" + pathtofile + "", System.Text.Encoding.Default);
            }
        }

        private void ScoreDefaultCB_Checked(object sender, RoutedEventArgs e)
        {

        }
    }
}

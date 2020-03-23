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
        string pathtotfile = null;
        string pathtopfile = null;
        string[] news;
        string[] questionst;
        string[] questionsp;
        public static string groupn, firstq, secondq, thirdq;
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
            news = File.ReadAllLines("news.txt", System.Text.Encoding.Default);
            News1.Text = news[1];
            News2.Text = news[2];
            News3.Text = news[3];
        }

        private void WebSite_Click(object sender, RoutedEventArgs e)
        {
            System.Diagnostics.Process.Start("http://brsu.by");
        }

        private void PathTButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            fileDialog.Multiselect = false;
            fileDialog.Filter = "Текстовые файлы|*.txt";
            fileDialog.DefaultExt = ".txt";
            Nullable<bool> dialogOK = fileDialog.ShowDialog();

            if (dialogOK == true)
            {
                pathtotfile = fileDialog.FileName.Trim();
            }
        }
        private void PathPButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog fileDialog = new OpenFileDialog();
            fileDialog.Multiselect = false;
            fileDialog.Filter = "Текстовые файлы|*.txt";
            fileDialog.DefaultExt = ".txt";
            Nullable<bool> dialogOK = fileDialog.ShowDialog();

            if (dialogOK == true)
            {
                pathtopfile = fileDialog.FileName.Trim();
            }
        }

        private void StartButton_Click(object sender, RoutedEventArgs e)
        {
            if (pathtopfile == null)
                MessageBox.Show("Укажите путь к файлу с практическими вопросами перед генерацией билета!");
            else if (pathtotfile == null)
                MessageBox.Show("Укажите путь к файлу с теоретическими вопросами перед генерацией билета!");
            else
            {
                Random rand = new Random();
                int temp;
                questionst = File.ReadAllLines(@"" + pathtotfile + "", System.Text.Encoding.Default);
                questionsp = File.ReadAllLines(@"" + pathtopfile + "", System.Text.Encoding.Default);
                if (Qnumber.SelectedIndex == 0)
                {
                    temp = rand.Next(questionst.Length);
                    firstq = (questionst[temp]);
                second:
                    temp = rand.Next(questionst.Length);
                    secondq = (questionst[temp]);
                    if (firstq == secondq)
                    {
                        goto second;
                    }
                    else
                    {
                        temp = rand.Next(questionsp.Length);
                        thirdq = (questionsp[temp]);
                    }
                }
                else if (Qnumber.SelectedIndex == 1)
                {
                    temp = rand.Next(questionst.Length);
                    firstq = (questionst[temp]);
                second:
                    temp = rand.Next(questionst.Length);
                    secondq = (questionst[temp]);
                    if (firstq == secondq)
                    {
                        goto second;
                    }
                    else
                    {
                    third:
                        temp = rand.Next(questionst.Length);
                        thirdq = (questionst[temp]);
                        if (thirdq == secondq || thirdq == firstq)
                            goto third;
                    }

                }
                else if (Qnumber.SelectedIndex == 2)
                {
                    temp = rand.Next(questionsp.Length);
                    firstq = (questionsp[temp]);
                second:
                    temp = rand.Next(questionsp.Length);
                    secondq = (questionsp[temp]);
                    if (firstq == secondq)
                    {
                        goto second;
                    }
                    else
                    {
                    third:
                        temp = rand.Next(questionst.Length);
                        thirdq = (questionsp[temp]);
                        if (thirdq == secondq || thirdq == firstq)
                            goto third;
                    }
                }
                groupn = Convert.ToString(groupbox.Text);
                if (groupn == null || groupn.Length >= 6 || groupn.Length <= 4)
                    MessageBox.Show("Укажите корректный номер группы");
                else
                {
                    MainWindow mw = new MainWindow();
                    mw.Owner = this;
                    mw.Show();
                }
            }
        }
    }
}

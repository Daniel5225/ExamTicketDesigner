using System.Diagnostics;
using System.Windows;

namespace ExamTicketDesigner
{
    /// <summary>
    /// Interaction logic for HomeWindow.xaml
    /// </summary>
    public partial class HomeWindow : Window
    {
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
    }
}

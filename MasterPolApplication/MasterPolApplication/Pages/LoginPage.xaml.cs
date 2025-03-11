using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MasterPolApplication.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder Err = new StringBuilder();

            if (String.IsNullOrEmpty(LoginBox.Text))
            {
                Err.AppendLine("Введите Логин");

            }
            if (String.IsNullOrEmpty(SchifreBox.Password))
            {
                Err.AppendLine("Введите Пароль");
            }

            if (Err.Length > 0)
            {
                MessageBox.Show(Err.ToString(), "Внимание!", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {

                var dir = Data.MasterPolBDEntities.GetContext().Directors;
                if (dir.Any(d => d.Login == LoginBox.Text && d.Password == SchifreBox.Password))
                {
                    MessageBox.Show("Добро пожаловать!");
                    Classes.manager.MainFrame.Navigate(new Pages.ViewPage());
                }
                else
                {
                    MessageBox.Show("Неверный логин или пароль", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                }

            }

        }
    }
}

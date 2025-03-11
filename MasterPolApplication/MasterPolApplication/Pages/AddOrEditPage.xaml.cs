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
    /// Логика взаимодействия для AddOrEditPage.xaml
    /// </summary>
    public partial class AddOrEditPage : Page
    {
        public AddOrEditPage()
        {
            InitializeComponent();
            PartnerTypeCB.ItemsSource = Data.MasterPolBDEntities.GetContext().PartnerTypes.ToList();
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder err = new StringBuilder();

            try
            {

                if (String.IsNullOrEmpty(PartnerNameTB.Text))
                {
                    err.AppendLine("Введите наименование");
                }
                if (String.IsNullOrEmpty(PartnerTypeCB.Text))
                {
                    err.AppendLine("Выберите тип партнера");
                }
                if (String.IsNullOrEmpty(RatingTB.Text))
                {
                    err.AppendLine("Введите рейтинг");
                }
                if (String.IsNullOrEmpty(DirectorTB.Text))
                {
                    err.AppendLine("Введите директора");
                }
                if (String.IsNullOrEmpty(PhoneTB.Text))
                {
                    err.AppendLine("Введите номер телефона");
                }
                if (String.IsNullOrEmpty(EmailTB.Text))
                {
                    err.AppendLine("Введите эл. почту");
                }
                if (String.IsNullOrEmpty(IndexTB.Text))
                {
                    err.AppendLine("Введите индекс");
                }
                if (String.IsNullOrEmpty(AreaTB.Text))
                {
                    err.AppendLine("Введите область");
                }
                if (String.IsNullOrEmpty(CityTB.Text))
                {
                    err.AppendLine("Введите город");
                }
                if (String.IsNullOrEmpty(StreetNameTB.Text))
                {
                    err.AppendLine("Введите улицу");
                }
                if (String.IsNullOrEmpty(HouseTB.Text))
                {
                    err.AppendLine("Введите номер дома");
                }
                if (err.Length > 0)
                {
                    MessageBox.Show(err.ToString(), "Внимание!", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    MessageBox.Show("СКОРО","0.147", MessageBoxButton.OK,MessageBoxImage.Information, MessageBoxResult.Cancel, MessageBoxOptions.ServiceNotification);
                }


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }

        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            if (Classes.manager.MainFrame.CanGoBack)
            {
                Classes.manager.MainFrame.GoBack();
            }
        }
    }
}

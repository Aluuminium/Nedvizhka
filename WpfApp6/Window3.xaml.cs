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
using System.Windows.Shapes;

namespace WpfApp6
{
    /// <summary>
    /// Логика взаимодействия для Window3.xaml
    /// </summary>
    public partial class Window4 : Window
    {
        private Недвижимость _currentProduct = new Недвижимость();
        public Window4()
        {
            InitializeComponent();
            DGrid.ItemsSource = Class1.GetContext().Недвижимость.ToList();
            var allTypes = Class1.GetContext().Район.ToList();
            allTypes.Insert(0, new Район
            {
                Название = "Все районы"
            });
            ComboType.ItemsSource = allTypes;
            ComboType.SelectedIndex = 0;
            UpdateProduct();
        }

       

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void TBoxSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateProduct();
        }

        private void ComboType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateProduct();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

        }
        private void UpdateProduct()
        {
            var _currentProduct = Class1.GetContext().Недвижимость.ToList();

            if (ComboType.SelectedIndex > 0)
                _currentProduct = _currentProduct.Where(p => p.Район == (ComboType.SelectedItem as Район)).ToList();

            _currentProduct = _currentProduct.Where(p => p.Адрес.ToLower().Contains(TBoxSearch.Text.ToLower())).ToList();
            DGrid.ItemsSource = _currentProduct;
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            var NedvigForRemoving = DGrid.SelectedItems.Cast<Недвижимость>().ToList();
            if (MessageBox.Show($"Вы точно хотите удалить следующие {NedvigForRemoving.Count()} элементов?", "Внимание!",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    Class1.GetContext().Недвижимость.RemoveRange(NedvigForRemoving);
                    Class1.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");
                    DGrid.ItemsSource = Class1.GetContext().Недвижимость.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {

            Window5 window = new Window5();
            window.Show();
        }
    }
    
}

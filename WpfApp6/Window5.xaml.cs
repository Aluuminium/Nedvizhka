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
    /// Логика взаимодействия для Window5.xaml
    /// </summary>
    public partial class Window5 : Window
    {
        private Недвижимость _currentNedvig = new Недвижимость();
        public Window5(Недвижимость selectedNedvig)
        {
            InitializeComponent();

            if (selectedNedvig != null)
                _currentNedvig = selectedNedvig;
            DataContext = _currentNedvig;
            ComboVid.ItemsSource = Class1.GetContext().Недвижимость.ToList();
            ComboRain.ItemsSource = Class1.GetContext().Недвижимость.ToList();
            
        }

      

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();
            
            if (string.IsNullOrWhiteSpace(_currentNedvig.количество_комнат))
                errors.AppendLine("Укажите количество комнат");
            if (string.IsNullOrWhiteSpace(_currentNedvig.Адрес))
                errors.AppendLine("Укажите адрес");
            if (_currentNedvig.Стоимость == null)
                errors.AppendLine("Укажите стоимость");
            if (string.IsNullOrWhiteSpace(_currentNedvig.метраж))
                errors.AppendLine("Укажите метраж");
            
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            if (_currentNedvig.ID_недвижимости == 0)
                Class1.GetContext().Недвижимость.Add(_currentNedvig);
            try
            {
                Class1.GetContext().SaveChanges();
                MessageBox.Show("Информация сохранена!");
               
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
    }
    
}

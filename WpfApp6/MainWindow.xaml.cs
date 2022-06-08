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

namespace WpfApp6
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (!String.IsNullOrEmpty(logintextBox.Text))
            {
                if (!String.IsNullOrEmpty(passwordtextBox.Password))
                {
                    IQueryable<Авторизация> авторизация_list = Class1.GetContext().Авторизация.Where(p => p.Логин == logintextBox.Text && p.Пароль == passwordtextBox.Password);
                    if (авторизация_list.Count() == 1)
                    {
                        MessageBox.Show("Добро пожаловать!");
                        Window1 window = new Window1(авторизация_list.First());
                        window.Show();

                    }
                    else MessageBox.Show("Неверный логин или пароль!");

                }
            }
        }
    }
}

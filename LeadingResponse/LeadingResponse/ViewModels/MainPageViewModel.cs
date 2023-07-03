using Prism.Commands;
using Prism.Mvvm;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LeadingResponse.ViewModels
{

   
    public class MainPageViewModel : ViewModelBase
    {

        public static event Action OpenScanner;
        public static event Action CloseScanner;

        // public static event Action<string, string> OpenScanner;
        public MainPageViewModel(INavigationService navigationService)
            : base(navigationService)
        {
            Image = "logo.png";
        }
        public void openScanner() { OpenScanner(); }
        public void closeScanner() { CloseScanner(); }
       
        
    }
}

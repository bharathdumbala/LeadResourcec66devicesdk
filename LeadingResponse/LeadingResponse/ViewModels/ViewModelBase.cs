using LeadingResponse.Interfaces;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Navigation;
using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;


namespace LeadingResponse.ViewModels
{
    public class ViewModelBase : BindableBase, IInitialize, INavigationAware, IDestructible, IBarcodeReader
    {
       
        public IBarcodeReader _barcodeReader;
        protected INavigationService NavigationService { get; private set; }

        private string _image;
        public string Image
        {
            get { return _image; }
            set { SetProperty(ref _image, value); }
        }
        private string _scannedData;
        public string ScannedData
        {
            get { return _scannedData; }
            set { SetProperty(ref _scannedData, value); }
        }

        private string _badgeid = "Unassigned";
        public string BadgeId
        {
            get { return _badgeid; }
            set { SetProperty(ref _badgeid, value); }
        }

        private string _equipmentid = "Unassigned";
        public string EquipmentId
        {
            get { return _equipmentid; }
            set { SetProperty(ref _equipmentid, value); }
        }

        private string _workorderid = "Unassigned";
        public string WorkOrderId
        {
            get { return _workorderid; }
            set { SetProperty(ref _workorderid, value); }
        }

        private string _sample;
        public string Sample
        {
            get { return _sample; }
            set { SetProperty(ref _sample, value); }
        }

        private string _responsedata;
        public string ResponseData
        {
            get { return _responsedata; }
            set { SetProperty(ref _responsedata, value);}
        }
        public ViewModelBase(INavigationService navigationService)
        {
            NavigationService = navigationService;
        }

        public virtual void Initialize(INavigationParameters parameters)
        {

        }

        public virtual void OnNavigatedFrom(INavigationParameters parameters)
        {

        }

        public virtual void OnNavigatedTo(INavigationParameters parameters)
        {

        }

        public virtual void Destroy()
        {

        }

        public void ScanDetected(string ScanType, string ScanResult)
        {
            try
            {
                
                MessagingCenter.Unsubscribe<Application, string>(App.Current, "OnBarcodeDataReceived");
                MessagingCenter.Subscribe<Application, string>(App.Current, "OnBarcodeDataReceived", (sender, barcodeValue) =>
                {
                   
                });
            }
            catch (Exception e)
            {
                
            }

            throw new NotImplementedException();
        }

       
    }
}

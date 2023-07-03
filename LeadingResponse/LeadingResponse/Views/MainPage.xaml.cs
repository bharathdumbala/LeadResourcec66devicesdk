﻿using Acr.UserDialogs;
using LeadingResponse.Helpers;
using LeadingResponse.Service;
using LeadingResponse.ViewModels;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text.RegularExpressions;
using Xamarin.Essentials;
using Xamarin.Forms;
using ZXing.Net.Mobile.Forms;
using Plugin.Permissions;
using Plugin.Permissions.Abstractions;
using System.Threading.Tasks;
using Microsoft.AppCenter.Crashes;

namespace LeadingResponse.Views
{
    public partial class MainPage
    {
        private string action = "OperatorBadgeScan";
        private ZXingScannerPage scanPage;
        public MainPage()
        {
            InitializeComponent();
            MessagingCenter.Subscribe<object>(this, "ToastDismissed", (sender) =>
            {
                // Perform your desired actions here
                workOrderSample.IsVisible = false;
                scanWorkOrder.IsVisible = true;
            });
        }
       

        private async void OnScanOperator(object sender, EventArgs e)
        {
            try
            {
                var status = await CrossPermissions.Current.CheckPermissionStatusAsync<CameraPermission>();
                if (status != Plugin.Permissions.Abstractions.PermissionStatus.Granted)
                {
                    if (await CrossPermissions.Current.ShouldShowRequestPermissionRationaleAsync(Permission.Camera))
                    {

                    }

                    status = await CrossPermissions.Current.RequestPermissionAsync<CameraPermission>();
                }

                if (status == Plugin.Permissions.Abstractions.PermissionStatus.Granted)
                {
                    ScanAndSetLabel();
                }
                else if (status != Plugin.Permissions.Abstractions.PermissionStatus.Unknown)
                {

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            
        }
        void SidebarOpen(object sender, EventArgs e)
        {
            sidebar.IsVisible = true;

        }
        
        private async void OnScanEquipment(object sender, EventArgs e)
        {
            try
            {
                var status = await CrossPermissions.Current.CheckPermissionStatusAsync<CameraPermission>();
                if (status != Plugin.Permissions.Abstractions.PermissionStatus.Granted)
                {
                    if (await CrossPermissions.Current.ShouldShowRequestPermissionRationaleAsync(Permission.Camera))
                    {

                    }

                    status = await CrossPermissions.Current.RequestPermissionAsync<CameraPermission>();
                }

                if (status == Plugin.Permissions.Abstractions.PermissionStatus.Granted)
                {
                    ScanAndSetLabel();
                }
                else if (status != Plugin.Permissions.Abstractions.PermissionStatus.Unknown)
                {

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        
        private async void OnScanWorkOrder(object sender, EventArgs e)
        {
            try
            {
                var status = await CrossPermissions.Current.CheckPermissionStatusAsync<CameraPermission>();
                if (status != Plugin.Permissions.Abstractions.PermissionStatus.Granted)
                {
                    if (await CrossPermissions.Current.ShouldShowRequestPermissionRationaleAsync(Permission.Camera))
                    {

                    }

                    status = await CrossPermissions.Current.RequestPermissionAsync<CameraPermission>();
                }

                if (status == Plugin.Permissions.Abstractions.PermissionStatus.Granted)
                {
                    ScanAndSetLabel();

                   // var viewModel = (MainPageViewModel)BindingContext;
                   // viewModel.openScanner();
                }
                else if (status != Plugin.Permissions.Abstractions.PermissionStatus.Unknown)
                {

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

        }
        void OnOperatorChange(object sender, EventArgs e)
        {
            sidebar.IsVisible = false;
            workOrderSample.IsVisible = false;
            action = "OperatorBadgeScan";
            scanOperator.IsVisible = true;
            scanEquipment.IsVisible = false;
            scanWorkOrder.IsVisible = false;
            badgeId.Text = string.Empty;
        }
        void OnEquipmentChange(object sender, EventArgs e)
        {
            sidebar.IsVisible = false;
            workOrderSample.IsVisible = false;
            action = "EquipmentIdScan";
            scanEquipment.IsVisible = true;
            scanOperator.IsVisible = false;
            scanWorkOrder.IsVisible = false;
            eqipmentId.Text = string.Empty;
            workOrderId.Text = string.Empty;
        }
        void ExitButton(object sender, EventArgs e)
        {
            sidebar.IsVisible = false;
        }
        public Dictionary<string, string> tosetProperties(String categoryValue)
        {

            return new Dictionary<string, string> { { "Category", categoryValue } };
        }
        private async void ScanAndSetLabel()
        {

            var viewModel = (MainPageViewModel)BindingContext;

            try {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    viewModel.openScanner();
                    MessagingCenter.Unsubscribe<Application, string>(App.Current, "OnBarcodeDataReceived");
                    MessagingCenter.Subscribe<Application, string>(App.Current, "OnBarcodeDataReceived", (sender, barcodeValue) =>
                    { 

                    try
                    {
                        string scannedData = barcodeValue;
                        if (scannedData.StartsWith("http://"))
                        {
                            scannedData = scannedData.Substring(7); // Remove the first 7 characters
                        }
                        viewModel.ScannedData = scannedData;
                        switch (action)
                        {
                            case ("OperatorBadgeScan"):
                                {
                                    scanOperator.IsVisible = false;
                                    scanEquipment.IsVisible = true;
                                    badgeId.Text = Scanneddata.Text;
                                    action = "EquipmentIdScan";
                                }
                                break;
                            case ("EquipmentIdScan"):
                                {
                                    scanEquipment.IsVisible = false;
                                    scanWorkOrder.IsVisible = true;
                                    eqipmentId.Text = Scanneddata.Text;
                                    workOrderId.Text = Regex.Replace(eqipmentId.Text, "[^a-zA-Z]", "");
                                    action = "WorkOrderIdScan";
                                }
                                break;
                            case ("WorkOrderIdScan"):
                                {
                                    action = "QueueLocatorScan";
                                    scanWorkOrder.IsVisible = false;
                                    sampleNumber.Text = Scanneddata.Text;
                                    workOrderSample.IsVisible = true;
                                    submit();
                                }
                                break;
                            case ("QueueLocatorScan"):
                                {
                                    newQueue.IsVisible = false;
                                    movSubmit();
                                }
                                break;
                        }
                    }
                    catch (Exception ex)
                    {

                        Crashes.TrackError(ex, tosetProperties("5"));

                        //DependencyService.Get<IToast>().ShowMessage("error inside thread 1" + ex.ToString());

                        Console.WriteLine(ex.ToString());
                    }
                    });
                });
            
                    } catch (Exception e) {

                        Crashes.TrackError(e, tosetProperties("6"));
                        //DependencyService.Get<IToast>().ShowMessage("error inside thread 2" + e.ToString());
                    }
                    
              


        }
        protected override bool OnBackButtonPressed()
        {
            Device.BeginInvokeOnMainThread(async () =>
            {
                bool answer = await DisplayAlert("Confirmation", "Do you want to exit?", "Yes", "cancel");
                if (answer)
                {
                    System.Diagnostics.Process.GetCurrentProcess().Kill();
                }
                else
                {

                }
            });
            return true;
        }

        void SampleIncluded(object sender,EventArgs e)
        {
            
            sampleIncluded.IsVisible = false;
            newQueue.IsVisible = true;
        }
        void SampleNotIncluded(object sender,EventArgs e) 
        {
            action = "WorkOrderIdScan";
            workOrderSample.IsVisible = false;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
            scanWorkOrder.IsVisible = true;
        }

        private async void OnScanQueue(object sender,EventArgs e)
        {
            try
            {
                var status = await CrossPermissions.Current.CheckPermissionStatusAsync<CameraPermission>();
                if (status != Plugin.Permissions.Abstractions.PermissionStatus.Granted)
                {
                    if (await CrossPermissions.Current.ShouldShowRequestPermissionRationaleAsync(Permission.Camera))
                    {

                    }

                    status = await CrossPermissions.Current.RequestPermissionAsync<CameraPermission>();
                }

                if (status == Plugin.Permissions.Abstractions.PermissionStatus.Granted)
                {
                    ScanAndSetLabel();
                }
                else if (status != Plugin.Permissions.Abstractions.PermissionStatus.Unknown)
                {

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
        private async void submit()
        {

            try
            {
                if (Connectivity.NetworkAccess != NetworkAccess.Internet)
                {
                    await DisplayAlert("No Internet", "Please Check Internet Connection", "OK");
                    return;
                }
                Util.startIndicator();
                string resturl = "http://lrspprinttrack-api-nonprod.eba-mma7td9g.us-east-1.elasticbeanstalk.com/" + "api/v1/lrsprinttrack";
                JObject request = new JObject();
                request.Add("typ", "INQ");
                request.Add("wo", sampleNumber.Text);
                request.Add("oid", badgeId.Text);
                request.Add("eid", eqipmentId.Text);
                request.Add("wque", "DPRNT");
                request.Add("mque", "");
                HttpRequestMessage httpRequest = Util.prepareRequestBy(resturl, request);
                RestService restService = new RestService();
                string response = await restService.Post(httpRequest);
                if (response != null)
                {
                    JObject responseData = JObject.Parse(response);
                    string responseCode = responseData["resultCode"].ToString();
                    string message = responseData["resultMessage"].ToString();
                    string sampleRequired = responseData["sampleRequired"].ToString();
                    switch (responseCode)
                    {
                        case ("QMV"):
                            {
                                switch (sampleRequired)
                                {
                                    case ("0"):
                                        {
                                            newQueue.IsVisible = true;
                                        }
                                        break;
                                    case ("1"):
                                        {
                                            sampleIncluded.IsVisible = true;
                                        }
                                        break;
                                    default:
                                        {
                                            sampleIncluded.IsVisible = true;
                                        }
                                        break;
                                }
                               
                            }
                            break;
                        case ("M2W"):
                            {
                                sampleNumber.Text = Scanneddata.Text;
                                workOrderSample.IsVisible = true;
                                DependencyService.Get<IToast>().ShowMessage(message + " at " + workOrderId.Text);
                                action = "WorkOrderIdScan";
                            }
                            break;
                        default:
                            {
                                sampleNumber.Text = Scanneddata.Text;
                                workOrderSample.IsVisible = true;
                                DependencyService.Get<IToast>().Show(message);
                                action = "WorkOrderIdScan";
                            }
                            break;
                    }
                   

                }

                Util.stopIndicator();
            }
            catch
            {

            }
        }

        private async void movSubmit()
        {
            try
            {
                if (Connectivity.NetworkAccess != NetworkAccess.Internet)
                {
                    await DisplayAlert("No Internet", "Please Check Internet Connection", "OK");
                    return;
                }
                Util.startIndicator();
                string resturl = "http://lrspprinttrack-api-nonprod.eba-mma7td9g.us-east-1.elasticbeanstalk.com/" + "api/v1/lrsprinttrack";
                JObject request = new JObject();
                request.Add("typ", "MOV");
                request.Add("wo", sampleNumber.Text);
                request.Add("oid", badgeId.Text);
                request.Add("eid", eqipmentId.Text);
                request.Add("wque", "DPRNT");
                request.Add("mque", "PRNT");
                HttpRequestMessage httpRequest = Util.prepareRequestBy(resturl, request);
                RestService restService = new RestService();
                string response = await restService.Post(httpRequest);
                if (response != null)
                {
                    JObject responseData = JObject.Parse(response);
                    string message = responseData["resultMessage"].ToString();
                    string responseCode = responseData["resultCode"].ToString();
                    switch (responseCode)
                    {
                        case ("WOM"):
                            {
                                DependencyService.Get<IToast>().ShowMessage(message + " at " + Scanneddata.Text);
                                action = "WorkOrderIdScan";
                            }
                            break;
                        default:
                            {
                                DependencyService.Get<IToast>().Show(message);
                                action = "WorkOrderIdScan";
                            }
                            break;
                    }
                    
                }
                Util.stopIndicator();
            }
            catch { }

        }
    

    }

    }


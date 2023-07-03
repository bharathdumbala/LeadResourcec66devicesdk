using Android.App;
using Android.Content.PM;
using Android.OS;
using Prism;
using Prism.Ioc;
using Android.Support.V4.App;
using Android.Support.V4.Content;
using Android;
using System;
using Acr.UserDialogs;
using Com.Rscja.Barcode;
using System.Threading;
using Com.Rscja.Deviceapi.Entity;
using static Com.Rscja.Barcode.BarcodeDecoder;
using Xamarin.Forms;
using LeadingResponse.ViewModels;
using Android.Widget;
using Microsoft.AppCenter.Analytics;
using Microsoft.AppCenter;
using Microsoft.AppCenter.Crashes;
using Com.Rscja.Team.Qcom.Deviceapi;
using System.Collections.Generic;

namespace LeadingResponse.Droid
{
    [Activity(Theme = "@style/MainTheme", MainLauncher = true, ScreenOrientation = ScreenOrientation.Portrait,
              ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {

        private BarcodeDecoder barcodeDecoder = BarcodeFactory.Instance.BarcodeDecoder;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);

            AppCenter.Start("21462ae6-d483-49ad-97f9-6386d0a184eb", typeof(Analytics), typeof(Crashes));



            ZXing.Net.Mobile.Forms.Android.Platform.Init();
            MainPageViewModel.OpenScanner -= MainPageViewModel_OpenScanner;
            MainPageViewModel.CloseScanner -= MainPageViewModel_CloseScanner;



            MainPageViewModel.OpenScanner += MainPageViewModel_OpenScanner;
            MainPageViewModel.CloseScanner += MainPageViewModel_CloseScanner;


            LoadApplication(new App(new AndroidInitializer()));
            UserDialogs.Init(this);

            if (ContextCompat.CheckSelfPermission(this, Manifest.Permission.Camera) != Permission.Granted)
            {
                // Request the camera permission
                ActivityCompat.RequestPermissions(this, new[] { Manifest.Permission.Camera }, 1);
            }
            else
            {
                // Permission already granted, proceed with app initialization
                InitializeApp();
            }

            

        }

        public Dictionary<string, string> tosetProperties(String categoryValue) {

            return new Dictionary<string, string> { { "Category", categoryValue } };
        }

        private void MainPageViewModel_CloseScanner()
        {

            stop();
            close();
        }

        private void MainPageViewModel_OpenScanner()
        {
            open();
        }

        protected override void OnDestroy()
        {
            close();
            base.OnDestroy();
        }

        public void open()
        {
            try
            {
                barcodeDecoder.Open(this);
                barcodeDecoder.SetDecodeCallback(new DecodeCallback(this));
                Thread.Sleep(2000);
                Toast.MakeText(Android.App.Application.Context, "Init Scanner ", ToastLength.Short).Show();
            }catch (Exception ex)
            {
                
                Crashes.TrackError(ex, tosetProperties("1"));
            }
            scan();
        }

        public void close()
        {
            barcodeDecoder.Close();
        }

        public void scan()
        {
            try
            {
                Toast.MakeText(Android.App.Application.Context, "Clicked Scan  ", ToastLength.Short).Show();
                barcodeDecoder.StartScan();
            }
            catch (Exception e)
            {
                
                Crashes.TrackError(e, tosetProperties("2"));
                // Toast.MakeText(Android.App.Application.Context, "error on scan " + e.ToString(), ToastLength.Short).Show();
            }

        }

        public void stop()
        {
            try
            {
                //Toast.MakeText(Android.App.Application.Context, "Clicked Stop scan ", ToastLength.Short).Show();
                barcodeDecoder.StopScan();
            }
            catch (Exception e)
            {
                Crashes.TrackError(e, tosetProperties("3"));
                // Toast.MakeText(Android.App.Application.Context, "error on Stop scan " + e.ToString(), ToastLength.Short).Show();
            }
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            if (requestCode == 1)
            {
                if (grantResults.Length > 0 && grantResults[0] == Permission.Granted)
                {
                    // Permission granted, proceed with app initialization
                    InitializeApp();
                }
                else
                {
                    // Permission denied, handle accordingly (e.g., show a message, disable related functionality)
                    ShowPermissionDeniedMessage();
                }
            }
        }

        private void ShowPermissionDeniedMessage()
        {
        }

        private void InitializeApp()
        {
        }


        class DecodeCallback : Java.Lang.Object, IDecodeCallback
        {
            MainActivity mainActivity;
            public Dictionary<string, string> tosetProperties(String categoryValue)
            {

                return new Dictionary<string, string> { { "Category", categoryValue } };
            }
            public DecodeCallback(MainActivity mainActivity)
            {
                this.mainActivity = mainActivity;
            }
            public void OnDecodeComplete(BarcodeEntity entity)
            {

                try
                {
                    if (entity.BarcodeData == null)
                    {
                        Toast.MakeText(Android.App.Application.Context, entity.BarcodeData, ToastLength.Short).Show();
                    }
                    else
                    {

                        try
                        {
                          //  Toast.MakeText(Android.App.Application.Context, entity.BarcodeData, ToastLength.Short).Show();

                            MessagingCenter.Send<object, string>(this, "OnBarcodeDataReceived", entity.BarcodeData);
                        }
                        catch (Exception e)
                        {
                            Crashes.TrackError(e, tosetProperties("4"));
                        }
                    }
                }
                catch (Exception e) {
                    Crashes.TrackError(e, tosetProperties("4"));
                }
            }

            
        }
        public class AndroidInitializer : IPlatformInitializer
        {
            public void RegisterTypes(IContainerRegistry containerRegistry)
            {
                // Register any platform specific implementations
            }
        }
    }
    }

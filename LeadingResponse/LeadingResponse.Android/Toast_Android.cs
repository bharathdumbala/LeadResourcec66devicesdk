using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Java.Lang;
using LeadingResponse.Droid;
using LeadingResponse.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;

[assembly: Xamarin.Forms.Dependency(typeof(Toast_Android))]
namespace LeadingResponse.Droid
{
    public class Toast_Android : IToast
    {
        //public void Show(string message)
        //{
        //    Toast.MakeText(Application.Context, message, ToastLength.Long).Show();
        //}
        [Obsolete]
        public void Show(string message)
        {
            Toast toast = Toast.MakeText(Android.App.Application.Context, message, ToastLength.Long);
            Android.Views.View toastView = toast.View;

            // Create a custom TextView
            TextView textView = new TextView(Android.App.Application.Context);
            textView.Text = message;
            textView.SetTextColor(Android.Graphics.Color.Red);
            float fontSize = 25; // Set the desired font size here
            textView.SetTextSize(Android.Util.ComplexUnitType.Sp, fontSize);
            toast.View = textView;
            toast.Duration = ToastLength.Long;
            toast.SetGravity(GravityFlags.Bottom, 0, 500);
            toast.Show();
            Handler handler = new Handler();
            handler.PostDelayed(new Runnable(() =>
            {
                // Dismiss the Toast after 5 seconds
                toast.Cancel();

                // Send a message to MainPage.xaml.cs indicating that the Toast is dismissed
                MessagingCenter.Send<object>(this, "ToastDismissed");
            }), 5000);

        }

        [Obsolete]
        public void ShowMessage(string message)
        {
            Toast toast = Toast.MakeText(Android.App.Application.Context, message, ToastLength.Long);
            Android.Views.View toastView = toast.View;

            // Create a custom TextView
            TextView textView = new TextView(Android.App.Application.Context);
            textView.Text = message;
            textView.SetTextColor(Android.Graphics.Color.Black);
            float fontSize = 25; // Set the desired font size here
            textView.SetTextSize(Android.Util.ComplexUnitType.Sp, fontSize);
            toast.View = textView;
            toast.Duration = ToastLength.Long;
            toast.SetGravity(GravityFlags.Bottom, 0, 500);
            toast.Show();
            Handler handler = new Handler();
            handler.PostDelayed(new Runnable(() =>
            {
                // Dismiss the Toast after 5 seconds
                toast.Cancel();

                // Send a message to MainPage.xaml.cs indicating that the Toast is dismissed
                MessagingCenter.Send<object>(this, "ToastDismissed");
            }), 5000);

        }
    }
}
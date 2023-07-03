using System;
using System.Collections.Generic;
using System.Text;

namespace LeadingResponse.Views
{
    public interface IToast
    {
        void Show(string message);
        void ShowMessage(string message);
    }
}

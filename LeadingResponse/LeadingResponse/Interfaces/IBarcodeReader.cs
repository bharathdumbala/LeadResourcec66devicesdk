using System;
using System.Collections.Generic;
using System.Text;

namespace LeadingResponse.Interfaces
{
    public interface IBarcodeReader
    {
        void ScanDetected(string ScanType, string ScanResult);
    }
}

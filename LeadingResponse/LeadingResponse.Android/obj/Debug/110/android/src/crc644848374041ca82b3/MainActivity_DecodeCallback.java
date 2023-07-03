package crc644848374041ca82b3;


public class MainActivity_DecodeCallback
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.rscja.barcode.BarcodeDecoder.DecodeCallback
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onDecodeComplete:(Lcom/rscja/deviceapi/entity/BarcodeEntity;)V:GetOnDecodeComplete_Lcom_rscja_deviceapi_entity_BarcodeEntity_Handler:Com.Rscja.Barcode.BarcodeDecoder/IDecodeCallbackInvoker, DeviceAPI_Android\n" +
			"";
		mono.android.Runtime.register ("LeadingResponse.Droid.MainActivity+DecodeCallback, LeadingResponse.Android", MainActivity_DecodeCallback.class, __md_methods);
	}


	public MainActivity_DecodeCallback ()
	{
		super ();
		if (getClass () == MainActivity_DecodeCallback.class) {
			mono.android.TypeManager.Activate ("LeadingResponse.Droid.MainActivity+DecodeCallback, LeadingResponse.Android", "", this, new java.lang.Object[] {  });
		}
	}

	public MainActivity_DecodeCallback (crc644848374041ca82b3.MainActivity p0)
	{
		super ();
		if (getClass () == MainActivity_DecodeCallback.class) {
			mono.android.TypeManager.Activate ("LeadingResponse.Droid.MainActivity+DecodeCallback, LeadingResponse.Android", "LeadingResponse.Droid.MainActivity, LeadingResponse.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public void onDecodeComplete (com.rscja.deviceapi.entity.BarcodeEntity p0)
	{
		n_onDecodeComplete (p0);
	}

	private native void n_onDecodeComplete (com.rscja.deviceapi.entity.BarcodeEntity p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}

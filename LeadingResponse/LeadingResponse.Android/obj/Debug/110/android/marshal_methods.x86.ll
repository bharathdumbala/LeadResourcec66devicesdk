; ModuleID = 'obj\Debug\110\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\110\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [258 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 71
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 101
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 19
	i32 39852199, ; 3: Plugin.Permissions => 0x26018a7 => 20
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 96
	i32 88799905, ; 5: Acr.UserDialogs => 0x54afaa1 => 5
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 85
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 85
	i32 121112136, ; 8: LeadingResponse.Android.dll => 0x7380648 => 0
	i32 164065134, ; 9: Unity.Abstractions => 0x9c76f6e => 33
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 52
	i32 166922606, ; 11: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 36
	i32 172012715, ; 12: FastAndroidCamera.dll => 0xa40b4ab => 10
	i32 179005154, ; 13: DeviceAPI_Android => 0xaab66e2 => 7
	i32 182336117, ; 14: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 86
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 50
	i32 219130465, ; 16: Xamarin.Android.Support.v4 => 0xd0faa61 => 41
	i32 220171995, ; 17: System.Diagnostics.Debug => 0xd1f8edb => 122
	i32 230216969, ; 18: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 66
	i32 231814094, ; 19: System.Globalization => 0xdd133ce => 128
	i32 232815796, ; 20: System.Web.Services => 0xde07cb4 => 115
	i32 246610117, ; 21: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 117
	i32 261689757, ; 22: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 55
	i32 278686392, ; 23: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 70
	i32 280482487, ; 24: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 64
	i32 318968648, ; 25: Xamarin.AndroidX.Activity.dll => 0x13031348 => 42
	i32 321597661, ; 26: System.Numerics => 0x132b30dd => 27
	i32 334355562, ; 27: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 104
	i32 342366114, ; 28: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 68
	i32 389971796, ; 29: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 37
	i32 441335492, ; 30: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 54
	i32 442521989, ; 31: Xamarin.Essentials => 0x1a605985 => 95
	i32 442565967, ; 32: System.Collections => 0x1a61054f => 120
	i32 450948140, ; 33: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 63
	i32 465846621, ; 34: mscorlib => 0x1bc4415d => 18
	i32 469710990, ; 35: System.dll => 0x1bff388e => 26
	i32 476646585, ; 36: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 64
	i32 486930444, ; 37: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 75
	i32 498788369, ; 38: System.ObjectModel => 0x1dbae811 => 123
	i32 501000162, ; 39: Prism.dll => 0x1ddca7e2 => 21
	i32 514659665, ; 40: Xamarin.Android.Support.Compat => 0x1ead1551 => 36
	i32 526420162, ; 41: System.Transactions.dll => 0x1f6088c2 => 110
	i32 545304856, ; 42: System.Runtime.Extensions => 0x2080b118 => 121
	i32 583021779, ; 43: Prism.DryIoc.Forms => 0x22c034d3 => 22
	i32 605376203, ; 44: System.IO.Compression.FileSystem => 0x24154ecb => 113
	i32 627609679, ; 45: Xamarin.AndroidX.CustomView => 0x2568904f => 59
	i32 663517072, ; 46: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 91
	i32 666292255, ; 47: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 47
	i32 690569205, ; 48: System.Xml.Linq.dll => 0x29293ff5 => 32
	i32 691439157, ; 49: Acr.UserDialogs.dll => 0x29368635 => 5
	i32 692692150, ; 50: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 35
	i32 721481609, ; 51: Microsoft.AppCenter.dll => 0x2b00ef89 => 16
	i32 775507847, ; 52: System.IO.Compression => 0x2e394f87 => 112
	i32 809851609, ; 53: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 54: Xamarin.AndroidX.Print => 0x3246f6cd => 82
	i32 877678880, ; 55: System.Globalization.dll => 0x34505120 => 128
	i32 882883187, ; 56: Xamarin.Android.Support.v4.dll => 0x349fba73 => 41
	i32 888338018, ; 57: LeadingResponse.Android => 0x34f2f662 => 0
	i32 928116545, ; 58: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 101
	i32 954320159, ; 59: ZXing.Net.Mobile.Forms => 0x38e1c51f => 104
	i32 955402788, ; 60: Newtonsoft.Json => 0x38f24a24 => 19
	i32 958213972, ; 61: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 40
	i32 967690846, ; 62: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 68
	i32 974778368, ; 63: FormsViewGroup.dll => 0x3a19f000 => 11
	i32 992768348, ; 64: System.Collections.dll => 0x3b2c715c => 120
	i32 1012816738, ; 65: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 84
	i32 1031141475, ; 66: Microsoft.AppCenter.Analytics => 0x3d75f863 => 14
	i32 1035644815, ; 67: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 46
	i32 1042160112, ; 68: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 98
	i32 1052210849, ; 69: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 72
	i32 1066173877, ; 70: Microsoft.AppCenter => 0x3f8c85b5 => 16
	i32 1098259244, ; 71: System => 0x41761b2c => 26
	i32 1134191450, ; 72: ZXingNetMobile.dll => 0x439a635a => 106
	i32 1137654822, ; 73: Plugin.Permissions.dll => 0x43cf3c26 => 20
	i32 1175144683, ; 74: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 89
	i32 1178241025, ; 75: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 79
	i32 1204270330, ; 76: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 47
	i32 1218518409, ; 77: Prism.Unity.Forms.dll => 0x48a11d89 => 24
	i32 1267360935, ; 78: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 90
	i32 1293217323, ; 79: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 61
	i32 1364015309, ; 80: System.IO => 0x514d38cd => 126
	i32 1365406463, ; 81: System.ServiceModel.Internals.dll => 0x516272ff => 107
	i32 1376866003, ; 82: Xamarin.AndroidX.SavedState => 0x52114ed3 => 84
	i32 1395857551, ; 83: Xamarin.AndroidX.Media.dll => 0x5333188f => 76
	i32 1406073936, ; 84: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 56
	i32 1411638395, ; 85: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 29
	i32 1440999970, ; 86: Unity.Container => 0x55e3ea22 => 34
	i32 1445445088, ; 87: Xamarin.Android.Support.Fragment => 0x5627bde0 => 39
	i32 1457743152, ; 88: System.Runtime.Extensions.dll => 0x56e36530 => 121
	i32 1460219004, ; 89: Xamarin.Forms.Xaml => 0x57092c7c => 99
	i32 1462112819, ; 90: System.IO.Compression.dll => 0x57261233 => 112
	i32 1469204771, ; 91: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 45
	i32 1543031311, ; 92: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 127
	i32 1571005899, ; 93: zxing.portable => 0x5da3a5cb => 105
	i32 1574652163, ; 94: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 38
	i32 1582372066, ; 95: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 60
	i32 1592978981, ; 96: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 97: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 74
	i32 1624863272, ; 98: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 93
	i32 1636350590, ; 99: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 58
	i32 1639515021, ; 100: System.Net.Http.dll => 0x61b9038d => 3
	i32 1639986890, ; 101: System.Text.RegularExpressions => 0x61c036ca => 127
	i32 1657153582, ; 102: System.Runtime => 0x62c6282e => 30
	i32 1658241508, ; 103: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 87
	i32 1658251792, ; 104: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 100
	i32 1663627514, ; 105: DryIoc => 0x6328f0fa => 8
	i32 1670060433, ; 106: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 55
	i32 1701541528, ; 107: System.Diagnostics.Debug.dll => 0x656b7698 => 122
	i32 1729485958, ; 108: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 51
	i32 1766324549, ; 109: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 86
	i32 1776026572, ; 110: System.Core.dll => 0x69dc03cc => 25
	i32 1788241197, ; 111: Xamarin.AndroidX.Fragment => 0x6a96652d => 63
	i32 1808609942, ; 112: Xamarin.AndroidX.Loader => 0x6bcd3296 => 74
	i32 1813201214, ; 113: Xamarin.Google.Android.Material => 0x6c13413e => 100
	i32 1818569960, ; 114: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 80
	i32 1849271627, ; 115: Prism.Forms.dll => 0x6e39a54b => 23
	i32 1867746548, ; 116: Xamarin.Essentials.dll => 0x6f538cf4 => 95
	i32 1878053835, ; 117: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 99
	i32 1885316902, ; 118: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 48
	i32 1904184254, ; 119: FastAndroidCamera => 0x717f8bbe => 10
	i32 1919157823, ; 120: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 77
	i32 2019465201, ; 121: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 72
	i32 2024078044, ; 122: Microsoft.AppCenter.Analytics.dll => 0x78a4fadc => 14
	i32 2028864565, ; 123: Essential.Interfaces.dll => 0x78ee0435 => 9
	i32 2055257422, ; 124: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 69
	i32 2065833063, ; 125: Unity.Container.dll => 0x7b221c67 => 34
	i32 2066202781, ; 126: Prism => 0x7b27c09d => 21
	i32 2079903147, ; 127: System.Runtime.dll => 0x7bf8cdab => 30
	i32 2090596640, ; 128: System.Numerics.Vectors => 0x7c9bf920 => 28
	i32 2097448633, ; 129: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 65
	i32 2126786730, ; 130: Xamarin.Forms.Platform.Android => 0x7ec430aa => 97
	i32 2166116741, ; 131: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 38
	i32 2193016926, ; 132: System.ObjectModel.dll => 0x82b6c85e => 123
	i32 2201231467, ; 133: System.Net.Http => 0x8334206b => 3
	i32 2217644978, ; 134: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 89
	i32 2244775296, ; 135: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 75
	i32 2256548716, ; 136: Xamarin.AndroidX.MultiDex => 0x8680336c => 77
	i32 2261435625, ; 137: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 67
	i32 2279755925, ; 138: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 83
	i32 2315684594, ; 139: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 43
	i32 2329204181, ; 140: zxing.portable.dll => 0x8ad4d5d5 => 105
	i32 2330457430, ; 141: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 37
	i32 2341995103, ; 142: ZXingNetMobile => 0x8b98025f => 106
	i32 2373288475, ; 143: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 39
	i32 2386191406, ; 144: LeadingResponse.dll => 0x8e3a642e => 13
	i32 2409053734, ; 145: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 81
	i32 2431243866, ; 146: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 102
	i32 2454642406, ; 147: System.Text.Encoding.dll => 0x924edee6 => 125
	i32 2465532216, ; 148: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 54
	i32 2471841756, ; 149: netstandard.dll => 0x93554fdc => 108
	i32 2475788418, ; 150: Java.Interop.dll => 0x93918882 => 12
	i32 2482213323, ; 151: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 103
	i32 2501346920, ; 152: System.Data.DataSetExtensions => 0x95178668 => 111
	i32 2505896520, ; 153: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 71
	i32 2538310050, ; 154: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 117
	i32 2563143864, ; 155: AndHUD.dll => 0x98c678b8 => 6
	i32 2581819634, ; 156: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 90
	i32 2620871830, ; 157: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 58
	i32 2624644809, ; 158: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 62
	i32 2633051222, ; 159: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 70
	i32 2693849962, ; 160: System.IO.dll => 0xa090e36a => 126
	i32 2697269578, ; 161: Microsoft.AppCenter.Crashes.dll => 0xa0c5114a => 15
	i32 2701096212, ; 162: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 87
	i32 2715334215, ; 163: System.Threading.Tasks.dll => 0xa1d8b647 => 119
	i32 2732626843, ; 164: Xamarin.AndroidX.Activity => 0xa2e0939b => 42
	i32 2737747696, ; 165: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 45
	i32 2766581644, ; 166: Xamarin.Forms.Core => 0xa4e6af8c => 96
	i32 2778768386, ; 167: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 92
	i32 2792073544, ; 168: Prism.DryIoc.Forms.dll => 0xa66ba948 => 22
	i32 2810250172, ; 169: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 56
	i32 2819470561, ; 170: System.Xml.dll => 0xa80db4e1 => 31
	i32 2853208004, ; 171: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 92
	i32 2855708567, ; 172: Xamarin.AndroidX.Transition => 0xaa36a797 => 88
	i32 2890562752, ; 173: LeadingResponse => 0xac4a7cc0 => 13
	i32 2903344695, ; 174: System.ComponentModel.Composition => 0xad0d8637 => 114
	i32 2905242038, ; 175: mscorlib.dll => 0xad2a79b6 => 18
	i32 2916838712, ; 176: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 93
	i32 2919462931, ; 177: System.Numerics.Vectors.dll => 0xae037813 => 28
	i32 2921128767, ; 178: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 44
	i32 2923486322, ; 179: Prism.Unity.Forms => 0xae40dc72 => 24
	i32 2978675010, ; 180: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 61
	i32 3024354802, ; 181: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 66
	i32 3044182254, ; 182: FormsViewGroup => 0xb57288ee => 11
	i32 3057625584, ; 183: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 78
	i32 3075834255, ; 184: System.Threading.Tasks => 0xb755818f => 119
	i32 3092211740, ; 185: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 40
	i32 3111772706, ; 186: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3124832203, ; 187: System.Threading.Tasks.Extensions => 0xba4127cb => 2
	i32 3204380047, ; 188: System.Data.dll => 0xbefef58f => 109
	i32 3211777861, ; 189: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 60
	i32 3220365878, ; 190: System.Threading => 0xbff2e236 => 124
	i32 3247949154, ; 191: Mono.Security => 0xc197c562 => 118
	i32 3258312781, ; 192: Xamarin.AndroidX.CardView => 0xc235e84d => 51
	i32 3265893370, ; 193: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 2
	i32 3267021929, ; 194: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 49
	i32 3299363146, ; 195: System.Text.Encoding => 0xc4a8494a => 125
	i32 3317135071, ; 196: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 59
	i32 3317144872, ; 197: System.Data => 0xc5b79d28 => 109
	i32 3340431453, ; 198: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 48
	i32 3346324047, ; 199: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 79
	i32 3353484488, ; 200: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 65
	i32 3353544232, ; 201: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 94
	i32 3362522851, ; 202: Xamarin.AndroidX.Core => 0xc86c06e3 => 57
	i32 3366347497, ; 203: Java.Interop => 0xc8a662e9 => 12
	i32 3374999561, ; 204: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 83
	i32 3395150330, ; 205: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 29
	i32 3404865022, ; 206: System.ServiceModel.Internals => 0xcaf21dfe => 107
	i32 3407215217, ; 207: Xamarin.CommunityToolkit => 0xcb15fa71 => 94
	i32 3429136800, ; 208: System.Xml => 0xcc6479a0 => 31
	i32 3430777524, ; 209: netstandard => 0xcc7d82b4 => 108
	i32 3439690031, ; 210: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 35
	i32 3441283291, ; 211: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 62
	i32 3442543374, ; 212: AndHUD => 0xcd310b0e => 6
	i32 3476120550, ; 213: Mono.Android => 0xcf3163e6 => 17
	i32 3486566296, ; 214: System.Transactions => 0xcfd0c798 => 110
	i32 3493954962, ; 215: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 53
	i32 3501239056, ; 216: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 49
	i32 3509114376, ; 217: System.Xml.Linq => 0xd128d608 => 32
	i32 3536029504, ; 218: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 97
	i32 3567349600, ; 219: System.ComponentModel.Composition.dll => 0xd4a16f60 => 114
	i32 3618140916, ; 220: Xamarin.AndroidX.Preference => 0xd7a872f4 => 81
	i32 3627220390, ; 221: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 82
	i32 3632359727, ; 222: Xamarin.Forms.Platform => 0xd881692f => 98
	i32 3633644679, ; 223: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 44
	i32 3641053882, ; 224: DeviceAPI_Android.dll => 0xd90612ba => 7
	i32 3641597786, ; 225: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 69
	i32 3672681054, ; 226: Mono.Android.dll => 0xdae8aa5e => 17
	i32 3676310014, ; 227: System.Web.Services.dll => 0xdb2009fe => 115
	i32 3682565725, ; 228: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 50
	i32 3684561358, ; 229: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 53
	i32 3689375977, ; 230: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3718780102, ; 231: Xamarin.AndroidX.Annotation => 0xdda814c6 => 43
	i32 3724971120, ; 232: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 78
	i32 3733882439, ; 233: Unity.Abstractions.dll => 0xde8e8647 => 33
	i32 3758932259, ; 234: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 67
	i32 3786282454, ; 235: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 52
	i32 3822602673, ; 236: Xamarin.AndroidX.Media => 0xe3d849b1 => 76
	i32 3829621856, ; 237: System.Numerics.dll => 0xe4436460 => 27
	i32 3847036339, ; 238: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 103
	i32 3885922214, ; 239: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 88
	i32 3896760992, ; 240: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 57
	i32 3920810846, ; 241: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 113
	i32 3921031405, ; 242: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 91
	i32 3931092270, ; 243: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 80
	i32 3945713374, ; 244: System.Data.DataSetExtensions.dll => 0xeb2ecede => 111
	i32 3955647286, ; 245: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 46
	i32 4054681211, ; 246: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 116
	i32 4073602200, ; 247: System.Threading.dll => 0xf2ce3c98 => 124
	i32 4085261167, ; 248: Prism.Forms => 0xf380236f => 23
	i32 4105002889, ; 249: Mono.Security.dll => 0xf4ad5f89 => 118
	i32 4146307099, ; 250: Microsoft.AppCenter.Crashes => 0xf723a01b => 15
	i32 4147896353, ; 251: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 116
	i32 4151237749, ; 252: System.Core => 0xf76edc75 => 25
	i32 4165582995, ; 253: DryIoc.dll => 0xf849c093 => 8
	i32 4182413190, ; 254: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 73
	i32 4186595366, ; 255: ZXing.Net.Mobile.Core => 0xf98a6026 => 102
	i32 4292120959, ; 256: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 73
	i32 4293553716 ; 257: Essential.Interfaces => 0xffea6e34 => 9
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [258 x i32] [
	i32 71, i32 101, i32 19, i32 20, i32 96, i32 5, i32 85, i32 85, ; 0..7
	i32 0, i32 33, i32 52, i32 36, i32 10, i32 7, i32 86, i32 50, ; 8..15
	i32 41, i32 122, i32 66, i32 128, i32 115, i32 117, i32 55, i32 70, ; 16..23
	i32 64, i32 42, i32 27, i32 104, i32 68, i32 37, i32 54, i32 95, ; 24..31
	i32 120, i32 63, i32 18, i32 26, i32 64, i32 75, i32 123, i32 21, ; 32..39
	i32 36, i32 110, i32 121, i32 22, i32 113, i32 59, i32 91, i32 47, ; 40..47
	i32 32, i32 5, i32 35, i32 16, i32 112, i32 1, i32 82, i32 128, ; 48..55
	i32 41, i32 0, i32 101, i32 104, i32 19, i32 40, i32 68, i32 11, ; 56..63
	i32 120, i32 84, i32 14, i32 46, i32 98, i32 72, i32 16, i32 26, ; 64..71
	i32 106, i32 20, i32 89, i32 79, i32 47, i32 24, i32 90, i32 61, ; 72..79
	i32 126, i32 107, i32 84, i32 76, i32 56, i32 29, i32 34, i32 39, ; 80..87
	i32 121, i32 99, i32 112, i32 45, i32 127, i32 105, i32 38, i32 60, ; 88..95
	i32 4, i32 74, i32 93, i32 58, i32 3, i32 127, i32 30, i32 87, ; 96..103
	i32 100, i32 8, i32 55, i32 122, i32 51, i32 86, i32 25, i32 63, ; 104..111
	i32 74, i32 100, i32 80, i32 23, i32 95, i32 99, i32 48, i32 10, ; 112..119
	i32 77, i32 72, i32 14, i32 9, i32 69, i32 34, i32 21, i32 30, ; 120..127
	i32 28, i32 65, i32 97, i32 38, i32 123, i32 3, i32 89, i32 75, ; 128..135
	i32 77, i32 67, i32 83, i32 43, i32 105, i32 37, i32 106, i32 39, ; 136..143
	i32 13, i32 81, i32 102, i32 125, i32 54, i32 108, i32 12, i32 103, ; 144..151
	i32 111, i32 71, i32 117, i32 6, i32 90, i32 58, i32 62, i32 70, ; 152..159
	i32 126, i32 15, i32 87, i32 119, i32 42, i32 45, i32 96, i32 92, ; 160..167
	i32 22, i32 56, i32 31, i32 92, i32 88, i32 13, i32 114, i32 18, ; 168..175
	i32 93, i32 28, i32 44, i32 24, i32 61, i32 66, i32 11, i32 78, ; 176..183
	i32 119, i32 40, i32 4, i32 2, i32 109, i32 60, i32 124, i32 118, ; 184..191
	i32 51, i32 2, i32 49, i32 125, i32 59, i32 109, i32 48, i32 79, ; 192..199
	i32 65, i32 94, i32 57, i32 12, i32 83, i32 29, i32 107, i32 94, ; 200..207
	i32 31, i32 108, i32 35, i32 62, i32 6, i32 17, i32 110, i32 53, ; 208..215
	i32 49, i32 32, i32 97, i32 114, i32 81, i32 82, i32 98, i32 44, ; 216..223
	i32 7, i32 69, i32 17, i32 115, i32 50, i32 53, i32 1, i32 43, ; 224..231
	i32 78, i32 33, i32 67, i32 52, i32 76, i32 27, i32 103, i32 88, ; 232..239
	i32 57, i32 113, i32 91, i32 80, i32 111, i32 46, i32 116, i32 124, ; 240..247
	i32 23, i32 118, i32 15, i32 116, i32 25, i32 8, i32 73, i32 102, ; 248..255
	i32 73, i32 9 ; 256..257
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}

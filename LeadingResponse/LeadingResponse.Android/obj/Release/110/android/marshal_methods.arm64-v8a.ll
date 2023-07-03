; ModuleID = 'obj\Release\110\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\110\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [150 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 5
	i64 125503650289234629, ; 1: Prism.DryIoc.Forms => 0x1bde0e7ad8132c5 => 54
	i64 184249734353293910, ; 2: Unity.Container.dll => 0x28e96283e169256 => 58
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 60
	i64 533980546060132701, ; 4: Microsoft.AppCenter.Analytics.dll => 0x769147a3ce2215d => 48
	i64 702024105029695270, ; 5: System.Drawing.Common => 0x9be17343c0e7726 => 0
	i64 720058930071658100, ; 6: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 29
	i64 872800313462103108, ; 7: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 27
	i64 913290893418446787, ; 8: Essential.Interfaces.dll => 0xcaca93a8ece3fc3 => 45
	i64 996343623809489702, ; 9: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 65
	i64 1000557547492888992, ; 10: Mono.Security.dll => 0xde2b1c9cba651a0 => 40
	i64 1120440138749646132, ; 11: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 37
	i64 1342439039765371018, ; 12: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 17
	i64 1400031058434376889, ; 13: Plugin.Permissions.dll => 0x136de8d4787ec4b9 => 52
	i64 1425944114962822056, ; 14: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1624659445732251991, ; 15: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 20
	i64 1731380447121279447, ; 16: Newtonsoft.Json => 0x18071957e9b889d7 => 51
	i64 1795316252682057001, ; 17: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 21
	i64 1836611346387731153, ; 18: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 60
	i64 1938067011858688285, ; 19: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 19
	i64 1981742497975770890, ; 20: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 32
	i64 1986553961460820075, ; 21: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 61
	i64 2040001226662520565, ; 22: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 1
	i64 2133195048986300728, ; 23: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 51
	i64 2262844636196693701, ; 24: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 27
	i64 2329709569556905518, ; 25: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 31
	i64 2337758774805907496, ; 26: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 10
	i64 2470498323731680442, ; 27: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 23
	i64 2489738558632930771, ; 28: Acr.UserDialogs.dll => 0x228d540722e8add3 => 41
	i64 2547086958574651984, ; 29: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 59
	i64 2592350477072141967, ; 30: System.Xml.dll => 0x23f9e10627330e8f => 11
	i64 2624866290265602282, ; 31: mscorlib.dll => 0x246d65fbde2db8ea => 6
	i64 2700029193044184363, ; 32: DeviceAPI_Android.dll => 0x25786e3ee6954d2b => 43
	i64 2749910993029543237, ; 33: Microsoft.AppCenter.Crashes => 0x2629a57a7f77b545 => 49
	i64 2783046991838674048, ; 34: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 10
	i64 2960931600190307745, ; 35: Xamarin.Forms.Core => 0x2917579a49927da1 => 63
	i64 3017704767998173186, ; 36: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 37
	i64 3022227708164871115, ; 37: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 18
	i64 3065925808332174432, ; 38: LeadingResponse.Android => 0x2a8c5b4759577460 => 73
	i64 3289520064315143713, ; 39: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 30
	i64 3522470458906976663, ; 40: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 35
	i64 3531994851595924923, ; 41: System.Numerics => 0x31042a9aade235bb => 9
	i64 3727469159507183293, ; 42: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 34
	i64 4255796613242758200, ; 43: zxing.portable => 0x3b0fa078b8a52438 => 71
	i64 4292233171264798357, ; 44: ZXing.Net.Mobile.Core.dll => 0x3b911353fa62fe95 => 68
	i64 4525561845656915374, ; 45: System.ServiceModel.Internals => 0x3ece06856b710dae => 38
	i64 4706792261117077996, ; 46: Prism.Unity.Forms => 0x4151e29fb370e9ec => 56
	i64 4794310189461587505, ; 47: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 59
	i64 4795410492532947900, ; 48: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 35
	i64 5142919913060024034, ; 49: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 64
	i64 5203618020066742981, ; 50: Xamarin.Essentials => 0x4836f704f0e652c5 => 62
	i64 5233983725610684227, ; 51: FastAndroidCamera => 0x48a2d877b5334f43 => 46
	i64 5486095413573346643, ; 52: Essential.Interfaces => 0x4c2286b649f06553 => 45
	i64 5507995362134886206, ; 53: System.Core.dll => 0x4c705499688c873e => 7
	i64 5619971803549996551, ; 54: Microsoft.AppCenter => 0x4dfe2694564f1607 => 50
	i64 5767696078500135884, ; 55: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 13
	i64 5767749323661124970, ; 56: ZXing.Net.Mobile.Core => 0x500b29737652256a => 68
	i64 6085203216496545422, ; 57: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 65
	i64 6086316965293125504, ; 58: FormsViewGroup.dll => 0x5476f10882baef80 => 47
	i64 6401687960814735282, ; 59: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 31
	i64 6548213210057960872, ; 60: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 26
	i64 6588599331800941662, ; 61: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 19
	i64 6659513131007730089, ; 62: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 29
	i64 6870591353058300706, ; 63: Prism.DryIoc.Forms.dll => 0x5f593e6f03e91322 => 54
	i64 6876862101832370452, ; 64: System.Xml.Linq => 0x5f6f85a57d108914 => 12
	i64 7231742840460097675, ; 65: DeviceAPI_Android => 0x645c4fcc4899388b => 43
	i64 7291284685109936435, ; 66: Microsoft.AppCenter.Analytics => 0x652fd8ca4c394133 => 48
	i64 7488575175965059935, ; 67: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 12
	i64 7500049668289977301, ; 68: Unity.Abstractions.dll => 0x6815876fb435dbd5 => 57
	i64 7635363394907363464, ; 69: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 63
	i64 7637365915383206639, ; 70: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 62
	i64 7654504624184590948, ; 71: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7710895609346150079, ; 72: DryIoc.dll => 0x6b029ab3df324ebf => 44
	i64 7820441508502274321, ; 73: System.Data => 0x6c87ca1e14ff8111 => 39
	i64 7836164640616011524, ; 74: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 20
	i64 7875371864198757046, ; 75: AndHUD.dll => 0x6d4af0fc27ac3ab6 => 42
	i64 7935019440888799779, ; 76: LeadingResponse => 0x6e1eda23d3fee223 => 74
	i64 8083354569033831015, ; 77: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 30
	i64 8101777744205214367, ; 78: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 13
	i64 8167236081217502503, ; 79: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 4
	i64 8626175481042262068, ; 80: Java.Interop => 0x77b654e585b55834 => 4
	i64 9324707631942237306, ; 81: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 21
	i64 9640208155866512610, ; 82: LeadingResponse.Android.dll => 0x85c8e63de33f3ce2 => 73
	i64 9662334977499516867, ; 83: System.Numerics.dll => 0x8617827802b0cfc3 => 9
	i64 9678050649315576968, ; 84: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 23
	i64 9780723996889434231, ; 85: AndHUD => 0x87bc1ca798bbc877 => 42
	i64 9808709177481450983, ; 86: Mono.Android.dll => 0x881f890734e555e7 => 5
	i64 9998632235833408227, ; 87: Mono.Security => 0x8ac2470b209ebae3 => 40
	i64 10038780035334861115, ; 88: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10229024438826829339, ; 89: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 26
	i64 10430153318873392755, ; 90: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 24
	i64 10895408586901726048, ; 91: Prism.Unity.Forms.dll => 0x973444622904a360 => 56
	i64 11023048688141570732, ; 92: System.Core => 0x98f9bc61168392ac => 7
	i64 11037814507248023548, ; 93: System.Xml => 0x992e31d0412bf7fc => 11
	i64 11122995063473561350, ; 94: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 61
	i64 11162124722117608902, ; 95: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 36
	i64 11340910727871153756, ; 96: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 25
	i64 11376461258732682436, ; 97: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 14
	i64 11529969570048099689, ; 98: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 36
	i64 11683710219442713716, ; 99: ZXingNetMobile => 0xa224e08aa87bf474 => 72
	i64 11854093697108963210, ; 100: Microsoft.AppCenter.Crashes.dll => 0xa48233696e606f8a => 49
	i64 12036099219279441448, ; 101: ZXing.Net.Mobile.Forms => 0xa708d0784e81ee28 => 70
	i64 12263794765274154115, ; 102: Microsoft.AppCenter.dll => 0xaa31c05cd6760483 => 50
	i64 12414299427252656003, ; 103: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 14
	i64 12451044538927396471, ; 104: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 28
	i64 12466513435562512481, ; 105: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 33
	i64 12538491095302438457, ; 106: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 22
	i64 12629983860853673214, ; 107: ZXing.Net.Mobile.Forms.Android.dll => 0xaf46b767a9198cfe => 69
	i64 12952608645614506925, ; 108: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 16
	i64 12953969983053113793, ; 109: Prism.Forms => 0xb3c5bf1106f429c1 => 55
	i64 12963446364377008305, ; 110: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 0
	i64 13196197655982686080, ; 111: Prism => 0xb7224fda06b0bf80 => 53
	i64 13280903765250193763, ; 112: Unity.Abstractions => 0xb84f3f9bf7e2b963 => 57
	i64 13358059602087096138, ; 113: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 17
	i64 13370592475155966277, ; 114: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13418829206099964054, ; 115: LeadingResponse.dll => 0xba3942112339b096 => 74
	i64 13454009404024712428, ; 116: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 67
	i64 13572454107664307259, ; 117: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 34
	i64 13647894001087880694, ; 118: System.Data.dll => 0xbd670f48cb071df6 => 39
	i64 13959074834287824816, ; 119: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 28
	i64 13967638549803255703, ; 120: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 64
	i64 14124974489674258913, ; 121: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 22
	i64 14161076099266624234, ; 122: Acr.UserDialogs => 0xc4863faf060fbaea => 41
	i64 14400856865250966808, ; 123: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 15
	i64 14792063746108907174, ; 124: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 67
	i64 14852515768018889994, ; 125: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 25
	i64 14954388675289411854, ; 126: ZXing.Net.Mobile.Forms.dll => 0xcf88a944b7bff10e => 70
	i64 15020741785497507190, ; 127: DryIoc => 0xd074651213721576 => 44
	i64 15370334346939861994, ; 128: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 24
	i64 15457813392950723921, ; 129: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 18
	i64 15609085926864131306, ; 130: System.dll => 0xd89e9cf3334914ea => 8
	i64 15810740023422282496, ; 131: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 66
	i64 15851975962649584118, ; 132: zxing.portable.dll => 0xdbfd882691c261f6 => 71
	i64 15963349826457351533, ; 133: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 1
	i64 16035518054986892682, ; 134: Prism.dll => 0xde899ab610db458a => 53
	i64 16107354805249926211, ; 135: ZXingNetMobile.dll => 0xdf88d1dade1a6443 => 72
	i64 16119456071779071829, ; 136: FastAndroidCamera.dll => 0xdfb3cfe48ae7b755 => 46
	i64 16154507427712707110, ; 137: System => 0xe03056ea4e39aa26 => 8
	i64 16526376532108668976, ; 138: ZXing.Net.Mobile.Forms.Android => 0xe5597be53cb07030 => 69
	i64 16608271216877230369, ; 139: Unity.Container => 0xe67c6ead674fd921 => 58
	i64 16833383113903931215, ; 140: mscorlib => 0xe99c30c1484d7f4f => 6
	i64 16895806301542741427, ; 141: Plugin.Permissions => 0xea79f6503d42f5b3 => 52
	i64 16932527889823454152, ; 142: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 16
	i64 17428701562824544279, ; 143: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 15
	i64 17704177640604968747, ; 144: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 33
	i64 17710060891934109755, ; 145: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 32
	i64 17882897186074144999, ; 146: FormsViewGroup => 0xf82cd03e3ac830e7 => 47
	i64 17892495832318972303, ; 147: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 66
	i64 18129453464017766560, ; 148: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 38
	i64 18434045720645380019 ; 149: Prism.Forms.dll => 0xffd2e2ea4860a7b3 => 55
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [150 x i32] [
	i32 5, i32 54, i32 58, i32 60, i32 48, i32 0, i32 29, i32 27, ; 0..7
	i32 45, i32 65, i32 40, i32 37, i32 17, i32 52, i32 3, i32 20, ; 8..15
	i32 51, i32 21, i32 60, i32 19, i32 32, i32 61, i32 1, i32 51, ; 16..23
	i32 27, i32 31, i32 10, i32 23, i32 41, i32 59, i32 11, i32 6, ; 24..31
	i32 43, i32 49, i32 10, i32 63, i32 37, i32 18, i32 73, i32 30, ; 32..39
	i32 35, i32 9, i32 34, i32 71, i32 68, i32 38, i32 56, i32 59, ; 40..47
	i32 35, i32 64, i32 62, i32 46, i32 45, i32 7, i32 50, i32 13, ; 48..55
	i32 68, i32 65, i32 47, i32 31, i32 26, i32 19, i32 29, i32 54, ; 56..63
	i32 12, i32 43, i32 48, i32 12, i32 57, i32 63, i32 62, i32 2, ; 64..71
	i32 44, i32 39, i32 20, i32 42, i32 74, i32 30, i32 13, i32 4, ; 72..79
	i32 4, i32 21, i32 73, i32 9, i32 23, i32 42, i32 5, i32 40, ; 80..87
	i32 2, i32 26, i32 24, i32 56, i32 7, i32 11, i32 61, i32 36, ; 88..95
	i32 25, i32 14, i32 36, i32 72, i32 49, i32 70, i32 50, i32 14, ; 96..103
	i32 28, i32 33, i32 22, i32 69, i32 16, i32 55, i32 0, i32 53, ; 104..111
	i32 57, i32 17, i32 3, i32 74, i32 67, i32 34, i32 39, i32 28, ; 112..119
	i32 64, i32 22, i32 41, i32 15, i32 67, i32 25, i32 70, i32 44, ; 120..127
	i32 24, i32 18, i32 8, i32 66, i32 71, i32 1, i32 53, i32 72, ; 128..135
	i32 46, i32 8, i32 69, i32 58, i32 6, i32 52, i32 16, i32 15, ; 136..143
	i32 33, i32 32, i32 47, i32 66, i32 38, i32 55 ; 144..149
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}

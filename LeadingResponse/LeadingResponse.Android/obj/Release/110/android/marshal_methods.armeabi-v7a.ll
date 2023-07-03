; ModuleID = 'obj\Release\110\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\110\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [150 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 67
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 51
	i32 39852199, ; 2: Plugin.Permissions => 0x26018a7 => 52
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 63
	i32 88799905, ; 4: Acr.UserDialogs => 0x54afaa1 => 41
	i32 121112136, ; 5: LeadingResponse.Android.dll => 0x7380648 => 73
	i32 164065134, ; 6: Unity.Abstractions => 0x9c76f6e => 57
	i32 166922606, ; 7: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 14
	i32 172012715, ; 8: FastAndroidCamera.dll => 0xa40b4ab => 46
	i32 179005154, ; 9: DeviceAPI_Android => 0xaab66e2 => 43
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 35
	i32 219130465, ; 11: Xamarin.Android.Support.v4 => 0xd0faa61 => 19
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 59
	i32 321597661, ; 13: System.Numerics => 0x132b30dd => 9
	i32 334355562, ; 14: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 70
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 30
	i32 389971796, ; 16: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 15
	i32 442521989, ; 17: Xamarin.Essentials => 0x1a605985 => 62
	i32 450948140, ; 18: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 28
	i32 465846621, ; 19: mscorlib => 0x1bc4415d => 6
	i32 469710990, ; 20: System.dll => 0x1bff388e => 8
	i32 501000162, ; 21: Prism.dll => 0x1ddca7e2 => 53
	i32 514659665, ; 22: Xamarin.Android.Support.Compat => 0x1ead1551 => 14
	i32 583021779, ; 23: Prism.DryIoc.Forms => 0x22c034d3 => 54
	i32 627609679, ; 24: Xamarin.AndroidX.CustomView => 0x2568904f => 26
	i32 690569205, ; 25: System.Xml.Linq.dll => 0x29293ff5 => 12
	i32 691439157, ; 26: Acr.UserDialogs.dll => 0x29368635 => 41
	i32 692692150, ; 27: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 13
	i32 721481609, ; 28: Microsoft.AppCenter.dll => 0x2b00ef89 => 50
	i32 809851609, ; 29: System.Drawing.Common.dll => 0x30455ad9 => 0
	i32 882883187, ; 30: Xamarin.Android.Support.v4.dll => 0x349fba73 => 19
	i32 888338018, ; 31: LeadingResponse.Android => 0x34f2f662 => 73
	i32 928116545, ; 32: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 67
	i32 954320159, ; 33: ZXing.Net.Mobile.Forms => 0x38e1c51f => 70
	i32 955402788, ; 34: Newtonsoft.Json => 0x38f24a24 => 51
	i32 958213972, ; 35: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 18
	i32 967690846, ; 36: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 30
	i32 974778368, ; 37: FormsViewGroup.dll => 0x3a19f000 => 47
	i32 1012816738, ; 38: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 60
	i32 1031141475, ; 39: Microsoft.AppCenter.Analytics => 0x3d75f863 => 48
	i32 1035644815, ; 40: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 21
	i32 1042160112, ; 41: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 65
	i32 1052210849, ; 42: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 32
	i32 1066173877, ; 43: Microsoft.AppCenter => 0x3f8c85b5 => 50
	i32 1098259244, ; 44: System => 0x41761b2c => 8
	i32 1134191450, ; 45: ZXingNetMobile.dll => 0x439a635a => 72
	i32 1137654822, ; 46: Plugin.Permissions.dll => 0x43cf3c26 => 52
	i32 1218518409, ; 47: Prism.Unity.Forms.dll => 0x48a11d89 => 56
	i32 1293217323, ; 48: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 27
	i32 1365406463, ; 49: System.ServiceModel.Internals.dll => 0x516272ff => 38
	i32 1376866003, ; 50: Xamarin.AndroidX.SavedState => 0x52114ed3 => 60
	i32 1406073936, ; 51: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 23
	i32 1411638395, ; 52: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 10
	i32 1440999970, ; 53: Unity.Container => 0x55e3ea22 => 58
	i32 1445445088, ; 54: Xamarin.Android.Support.Fragment => 0x5627bde0 => 17
	i32 1460219004, ; 55: Xamarin.Forms.Xaml => 0x57092c7c => 66
	i32 1469204771, ; 56: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 20
	i32 1571005899, ; 57: zxing.portable => 0x5da3a5cb => 71
	i32 1574652163, ; 58: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 16
	i32 1592978981, ; 59: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 60: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 33
	i32 1636350590, ; 61: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 25
	i32 1639515021, ; 62: System.Net.Http.dll => 0x61b9038d => 2
	i32 1658251792, ; 63: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 37
	i32 1663627514, ; 64: DryIoc => 0x6328f0fa => 44
	i32 1729485958, ; 65: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 22
	i32 1766324549, ; 66: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 35
	i32 1776026572, ; 67: System.Core.dll => 0x69dc03cc => 7
	i32 1788241197, ; 68: Xamarin.AndroidX.Fragment => 0x6a96652d => 28
	i32 1808609942, ; 69: Xamarin.AndroidX.Loader => 0x6bcd3296 => 33
	i32 1813201214, ; 70: Xamarin.Google.Android.Material => 0x6c13413e => 37
	i32 1849271627, ; 71: Prism.Forms.dll => 0x6e39a54b => 55
	i32 1867746548, ; 72: Xamarin.Essentials.dll => 0x6f538cf4 => 62
	i32 1878053835, ; 73: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 66
	i32 1904184254, ; 74: FastAndroidCamera => 0x717f8bbe => 46
	i32 2019465201, ; 75: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 32
	i32 2024078044, ; 76: Microsoft.AppCenter.Analytics.dll => 0x78a4fadc => 48
	i32 2028864565, ; 77: Essential.Interfaces.dll => 0x78ee0435 => 45
	i32 2055257422, ; 78: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 31
	i32 2065833063, ; 79: Unity.Container.dll => 0x7b221c67 => 58
	i32 2066202781, ; 80: Prism => 0x7b27c09d => 53
	i32 2097448633, ; 81: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 29
	i32 2126786730, ; 82: Xamarin.Forms.Platform.Android => 0x7ec430aa => 64
	i32 2166116741, ; 83: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 16
	i32 2201231467, ; 84: System.Net.Http => 0x8334206b => 2
	i32 2279755925, ; 85: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 34
	i32 2329204181, ; 86: zxing.portable.dll => 0x8ad4d5d5 => 71
	i32 2330457430, ; 87: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 15
	i32 2341995103, ; 88: ZXingNetMobile => 0x8b98025f => 72
	i32 2373288475, ; 89: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 17
	i32 2386191406, ; 90: LeadingResponse.dll => 0x8e3a642e => 74
	i32 2431243866, ; 91: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 68
	i32 2475788418, ; 92: Java.Interop.dll => 0x93918882 => 4
	i32 2482213323, ; 93: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 69
	i32 2563143864, ; 94: AndHUD.dll => 0x98c678b8 => 42
	i32 2620871830, ; 95: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 25
	i32 2697269578, ; 96: Microsoft.AppCenter.Crashes.dll => 0xa0c5114a => 49
	i32 2732626843, ; 97: Xamarin.AndroidX.Activity => 0xa2e0939b => 59
	i32 2737747696, ; 98: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 20
	i32 2766581644, ; 99: Xamarin.Forms.Core => 0xa4e6af8c => 63
	i32 2778768386, ; 100: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 36
	i32 2792073544, ; 101: Prism.DryIoc.Forms.dll => 0xa66ba948 => 54
	i32 2810250172, ; 102: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 23
	i32 2819470561, ; 103: System.Xml.dll => 0xa80db4e1 => 11
	i32 2853208004, ; 104: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 36
	i32 2890562752, ; 105: LeadingResponse => 0xac4a7cc0 => 74
	i32 2905242038, ; 106: mscorlib.dll => 0xad2a79b6 => 6
	i32 2923486322, ; 107: Prism.Unity.Forms => 0xae40dc72 => 56
	i32 2978675010, ; 108: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 27
	i32 3044182254, ; 109: FormsViewGroup => 0xb57288ee => 47
	i32 3092211740, ; 110: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 18
	i32 3111772706, ; 111: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3124832203, ; 112: System.Threading.Tasks.Extensions => 0xba4127cb => 1
	i32 3204380047, ; 113: System.Data.dll => 0xbefef58f => 39
	i32 3247949154, ; 114: Mono.Security => 0xc197c562 => 40
	i32 3258312781, ; 115: Xamarin.AndroidX.CardView => 0xc235e84d => 22
	i32 3265893370, ; 116: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 1
	i32 3317135071, ; 117: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 26
	i32 3317144872, ; 118: System.Data => 0xc5b79d28 => 39
	i32 3353484488, ; 119: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 29
	i32 3353544232, ; 120: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 61
	i32 3362522851, ; 121: Xamarin.AndroidX.Core => 0xc86c06e3 => 24
	i32 3366347497, ; 122: Java.Interop => 0xc8a662e9 => 4
	i32 3374999561, ; 123: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 34
	i32 3395150330, ; 124: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 10
	i32 3404865022, ; 125: System.ServiceModel.Internals => 0xcaf21dfe => 38
	i32 3407215217, ; 126: Xamarin.CommunityToolkit => 0xcb15fa71 => 61
	i32 3429136800, ; 127: System.Xml => 0xcc6479a0 => 11
	i32 3439690031, ; 128: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 13
	i32 3442543374, ; 129: AndHUD => 0xcd310b0e => 42
	i32 3476120550, ; 130: Mono.Android => 0xcf3163e6 => 5
	i32 3509114376, ; 131: System.Xml.Linq => 0xd128d608 => 12
	i32 3536029504, ; 132: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 64
	i32 3632359727, ; 133: Xamarin.Forms.Platform => 0xd881692f => 65
	i32 3641053882, ; 134: DeviceAPI_Android.dll => 0xd90612ba => 43
	i32 3641597786, ; 135: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 31
	i32 3672681054, ; 136: Mono.Android.dll => 0xdae8aa5e => 5
	i32 3689375977, ; 137: System.Drawing.Common => 0xdbe768e9 => 0
	i32 3733882439, ; 138: Unity.Abstractions.dll => 0xde8e8647 => 57
	i32 3829621856, ; 139: System.Numerics.dll => 0xe4436460 => 9
	i32 3847036339, ; 140: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 69
	i32 3896760992, ; 141: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 24
	i32 3955647286, ; 142: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 21
	i32 4085261167, ; 143: Prism.Forms => 0xf380236f => 55
	i32 4105002889, ; 144: Mono.Security.dll => 0xf4ad5f89 => 40
	i32 4146307099, ; 145: Microsoft.AppCenter.Crashes => 0xf723a01b => 49
	i32 4151237749, ; 146: System.Core => 0xf76edc75 => 7
	i32 4165582995, ; 147: DryIoc.dll => 0xf849c093 => 44
	i32 4186595366, ; 148: ZXing.Net.Mobile.Core => 0xf98a6026 => 68
	i32 4293553716 ; 149: Essential.Interfaces => 0xffea6e34 => 45
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [150 x i32] [
	i32 67, i32 51, i32 52, i32 63, i32 41, i32 73, i32 57, i32 14, ; 0..7
	i32 46, i32 43, i32 35, i32 19, i32 59, i32 9, i32 70, i32 30, ; 8..15
	i32 15, i32 62, i32 28, i32 6, i32 8, i32 53, i32 14, i32 54, ; 16..23
	i32 26, i32 12, i32 41, i32 13, i32 50, i32 0, i32 19, i32 73, ; 24..31
	i32 67, i32 70, i32 51, i32 18, i32 30, i32 47, i32 60, i32 48, ; 32..39
	i32 21, i32 65, i32 32, i32 50, i32 8, i32 72, i32 52, i32 56, ; 40..47
	i32 27, i32 38, i32 60, i32 23, i32 10, i32 58, i32 17, i32 66, ; 48..55
	i32 20, i32 71, i32 16, i32 3, i32 33, i32 25, i32 2, i32 37, ; 56..63
	i32 44, i32 22, i32 35, i32 7, i32 28, i32 33, i32 37, i32 55, ; 64..71
	i32 62, i32 66, i32 46, i32 32, i32 48, i32 45, i32 31, i32 58, ; 72..79
	i32 53, i32 29, i32 64, i32 16, i32 2, i32 34, i32 71, i32 15, ; 80..87
	i32 72, i32 17, i32 74, i32 68, i32 4, i32 69, i32 42, i32 25, ; 88..95
	i32 49, i32 59, i32 20, i32 63, i32 36, i32 54, i32 23, i32 11, ; 96..103
	i32 36, i32 74, i32 6, i32 56, i32 27, i32 47, i32 18, i32 3, ; 104..111
	i32 1, i32 39, i32 40, i32 22, i32 1, i32 26, i32 39, i32 29, ; 112..119
	i32 61, i32 24, i32 4, i32 34, i32 10, i32 38, i32 61, i32 11, ; 120..127
	i32 13, i32 42, i32 5, i32 12, i32 64, i32 65, i32 43, i32 31, ; 128..135
	i32 5, i32 0, i32 57, i32 9, i32 69, i32 24, i32 21, i32 55, ; 136..143
	i32 40, i32 49, i32 7, i32 44, i32 68, i32 45 ; 144..149
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}

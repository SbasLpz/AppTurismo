; ModuleID = 'obj/Release/android/marshal_methods.x86.ll'
source_filename = "obj/Release/android/marshal_methods.x86.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [114 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 50
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 8
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 45
	i32 182336117, ; 3: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 42
	i32 230752869, ; 4: Microsoft.CSharp.dll => 0xdc10265 => 55
	i32 318968648, ; 5: Xamarin.AndroidX.Activity.dll => 0x13031348 => 26
	i32 321597661, ; 6: System.Numerics => 0x132b30dd => 19
	i32 342366114, ; 7: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 36
	i32 393699800, ; 8: Firebase => 0x177761d8 => 3
	i32 442521989, ; 9: Xamarin.Essentials => 0x1a605985 => 44
	i32 450948140, ; 10: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 34
	i32 465612405, ; 11: AppTurismo.dll => 0x1bc0ae75 => 2
	i32 465846621, ; 12: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 13: System.dll => 0x1bff388e => 17
	i32 566111323, ; 14: AppTurismo.Android.dll => 0x21be2c5b => 0
	i32 627609679, ; 15: Xamarin.AndroidX.CustomView => 0x2568904f => 32
	i32 690569205, ; 16: System.Xml.Linq.dll => 0x29293ff5 => 25
	i32 748832960, ; 17: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 12
	i32 809851609, ; 18: System.Drawing.Common.dll => 0x30455ad9 => 54
	i32 831745141, ; 19: System.Reactive.Linq => 0x31936c75 => 22
	i32 928116545, ; 20: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 50
	i32 955402788, ; 21: Newtonsoft.Json => 0x38f24a24 => 8
	i32 967690846, ; 22: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 36
	i32 974778368, ; 23: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 999496121, ; 24: Rating => 0x3b9319b9 => 9
	i32 1012816738, ; 25: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 41
	i32 1035644815, ; 26: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 28
	i32 1042160112, ; 27: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 47
	i32 1052210849, ; 28: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 38
	i32 1098259244, ; 29: System => 0x41761b2c => 17
	i32 1242515254, ; 30: AppTurismo => 0x4a0f4736 => 2
	i32 1292207520, ; 31: SQLitePCLRaw.core.dll => 0x4d0585a0 => 13
	i32 1293217323, ; 32: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 33
	i32 1365406463, ; 33: System.ServiceModel.Internals.dll => 0x516272ff => 53
	i32 1376866003, ; 34: Xamarin.AndroidX.SavedState => 0x52114ed3 => 41
	i32 1406073936, ; 35: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 30
	i32 1454233054, ; 36: SQLitePCLRaw.lib.e_sqlite3.dll => 0x56add5de => 14
	i32 1460219004, ; 37: Xamarin.Forms.Xaml => 0x57092c7c => 48
	i32 1469204771, ; 38: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 27
	i32 1592978981, ; 39: System.Runtime.Serialization.dll => 0x5ef2ee25 => 1
	i32 1622152042, ; 40: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 39
	i32 1639515021, ; 41: System.Net.Http.dll => 0x61b9038d => 18
	i32 1658251792, ; 42: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 49
	i32 1729485958, ; 43: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 29
	i32 1766324549, ; 44: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 42
	i32 1776026572, ; 45: System.Core.dll => 0x69dc03cc => 16
	i32 1788241197, ; 46: Xamarin.AndroidX.Fragment => 0x6a96652d => 34
	i32 1808609942, ; 47: Xamarin.AndroidX.Loader => 0x6bcd3296 => 39
	i32 1813201214, ; 48: Xamarin.Google.Android.Material => 0x6c13413e => 49
	i32 1867746548, ; 49: Xamarin.Essentials.dll => 0x6f538cf4 => 44
	i32 1878053835, ; 50: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 48
	i32 2019465201, ; 51: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 38
	i32 2019533804, ; 52: SQLitePCLRaw.lib.e_sqlite3 => 0x785fa3ec => 14
	i32 2055257422, ; 53: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 37
	i32 2097448633, ; 54: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 35
	i32 2103459038, ; 55: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 15
	i32 2126786730, ; 56: Xamarin.Forms.Platform.Android => 0x7ec430aa => 46
	i32 2201231467, ; 57: System.Net.Http => 0x8334206b => 18
	i32 2279755925, ; 58: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 40
	i32 2292630417, ; 59: System.Reactive.PlatformServices.dll => 0x88a6c391 => 23
	i32 2303054758, ; 60: System.Reactive.Interfaces.dll => 0x8945d3a6 => 21
	i32 2373047941, ; 61: XamForms.Controls.Calendar.Droid => 0x8d71d685 => 52
	i32 2465273461, ; 62: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 12
	i32 2475788418, ; 63: Java.Interop.dll => 0x93918882 => 5
	i32 2525193637, ; 64: AppTurismo.Android => 0x968365a5 => 0
	i32 2562349572, ; 65: Microsoft.CSharp => 0x98ba5a04 => 55
	i32 2732626843, ; 66: Xamarin.AndroidX.Activity => 0xa2e0939b => 26
	i32 2737747696, ; 67: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 27
	i32 2766581644, ; 68: Xamarin.Forms.Core => 0xa4e6af8c => 45
	i32 2778768386, ; 69: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 43
	i32 2810250172, ; 70: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 30
	i32 2819470561, ; 71: System.Xml.dll => 0xa80db4e1 => 24
	i32 2853208004, ; 72: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 43
	i32 2905242038, ; 73: mscorlib.dll => 0xad2a79b6 => 7
	i32 2907682227, ; 74: Rating.dll => 0xad4fb5b3 => 9
	i32 2978675010, ; 75: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 33
	i32 3044182254, ; 76: FormsViewGroup => 0xb57288ee => 4
	i32 3111772706, ; 77: System.Runtime.Serialization => 0xb979e222 => 1
	i32 3247949154, ; 78: Mono.Security => 0xc197c562 => 56
	i32 3258312781, ; 79: Xamarin.AndroidX.CardView => 0xc235e84d => 29
	i32 3282591531, ; 80: System.Reactive.Interfaces => 0xc3a85f2b => 21
	i32 3286872994, ; 81: SQLite-net.dll => 0xc3e9b3a2 => 10
	i32 3300173928, ; 82: System.Reactive.Core => 0xc4b4a868 => 20
	i32 3317135071, ; 83: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 32
	i32 3322403133, ; 84: Firebase.dll => 0xc607d93d => 3
	i32 3353484488, ; 85: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 35
	i32 3360279109, ; 86: SQLitePCLRaw.core => 0xc849ca45 => 13
	i32 3362522851, ; 87: Xamarin.AndroidX.Core => 0xc86c06e3 => 31
	i32 3366347497, ; 88: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 89: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 40
	i32 3404865022, ; 90: System.ServiceModel.Internals => 0xcaf21dfe => 53
	i32 3425410982, ; 91: System.Reactive.Core.dll => 0xcc2b9fa6 => 20
	i32 3429136800, ; 92: System.Xml => 0xcc6479a0 => 24
	i32 3476120550, ; 93: Mono.Android => 0xcf3163e6 => 6
	i32 3509114376, ; 94: System.Xml.Linq => 0xd128d608 => 25
	i32 3536029504, ; 95: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 46
	i32 3543730307, ; 96: SQLitePCLRaw.batteries_green.dll => 0xd3390883 => 11
	i32 3586971312, ; 97: XamForms.Controls.Calendar.Droid.dll => 0xd5ccd6b0 => 52
	i32 3632359727, ; 98: Xamarin.Forms.Platform => 0xd881692f => 47
	i32 3641597786, ; 99: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 37
	i32 3641967938, ; 100: SQLitePCLRaw.batteries_green => 0xd9140542 => 11
	i32 3672681054, ; 101: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3689375977, ; 102: System.Drawing.Common => 0xdbe768e9 => 54
	i32 3754567612, ; 103: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 15
	i32 3760520151, ; 104: System.Reactive.Linq.dll => 0xe024fbd7 => 22
	i32 3829621856, ; 105: System.Numerics.dll => 0xe4436460 => 19
	i32 3835113687, ; 106: System.Reactive.PlatformServices => 0xe49730d7 => 23
	i32 3876362041, ; 107: SQLite-net => 0xe70c9739 => 10
	i32 3896760992, ; 108: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 31
	i32 3955647286, ; 109: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 28
	i32 4014908255, ; 110: XamForms.Controls.Calendar => 0xef4ea35f => 51
	i32 4105002889, ; 111: Mono.Security.dll => 0xf4ad5f89 => 56
	i32 4151237749, ; 112: System.Core => 0xf76edc75 => 16
	i32 4220811361 ; 113: XamForms.Controls.Calendar.dll => 0xfb947861 => 51
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [114 x i32] [
	i32 50, i32 8, i32 45, i32 42, i32 55, i32 26, i32 19, i32 36, ; 0..7
	i32 3, i32 44, i32 34, i32 2, i32 7, i32 17, i32 0, i32 32, ; 8..15
	i32 25, i32 12, i32 54, i32 22, i32 50, i32 8, i32 36, i32 4, ; 16..23
	i32 9, i32 41, i32 28, i32 47, i32 38, i32 17, i32 2, i32 13, ; 24..31
	i32 33, i32 53, i32 41, i32 30, i32 14, i32 48, i32 27, i32 1, ; 32..39
	i32 39, i32 18, i32 49, i32 29, i32 42, i32 16, i32 34, i32 39, ; 40..47
	i32 49, i32 44, i32 48, i32 38, i32 14, i32 37, i32 35, i32 15, ; 48..55
	i32 46, i32 18, i32 40, i32 23, i32 21, i32 52, i32 12, i32 5, ; 56..63
	i32 0, i32 55, i32 26, i32 27, i32 45, i32 43, i32 30, i32 24, ; 64..71
	i32 43, i32 7, i32 9, i32 33, i32 4, i32 1, i32 56, i32 29, ; 72..79
	i32 21, i32 10, i32 20, i32 32, i32 3, i32 35, i32 13, i32 31, ; 80..87
	i32 5, i32 40, i32 53, i32 20, i32 24, i32 6, i32 25, i32 46, ; 88..95
	i32 11, i32 52, i32 47, i32 37, i32 11, i32 6, i32 54, i32 15, ; 96..103
	i32 22, i32 19, i32 23, i32 10, i32 31, i32 28, i32 51, i32 56, ; 104..111
	i32 16, i32 51 ; 112..113
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
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

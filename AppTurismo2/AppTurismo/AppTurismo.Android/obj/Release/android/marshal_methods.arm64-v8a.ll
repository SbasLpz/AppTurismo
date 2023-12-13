; ModuleID = 'obj/Release/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Release/android/marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [114 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 6
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 41
	i64 702024105029695270, ; 2: System.Drawing.Common => 0x9be17343c0e7726 => 54
	i64 720058930071658100, ; 3: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 35
	i64 872800313462103108, ; 4: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 33
	i64 996343623809489702, ; 5: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 47
	i64 1000557547492888992, ; 6: Mono.Security.dll => 0xde2b1c9cba651a0 => 56
	i64 1120440138749646132, ; 7: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 49
	i64 1301485588176585670, ; 8: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 13
	i64 1425944114962822056, ; 9: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 1
	i64 1518315023656898250, ; 10: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 15
	i64 1624659445732251991, ; 11: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 27
	i64 1662365157665203173, ; 12: Rating.dll => 0x1711e84da59ee3e5 => 9
	i64 1731380447121279447, ; 13: Newtonsoft.Json => 0x18071957e9b889d7 => 8
	i64 1795316252682057001, ; 14: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 28
	i64 1836611346387731153, ; 15: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 41
	i64 1981742497975770890, ; 16: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 38
	i64 2133195048986300728, ; 17: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 8
	i64 2262844636196693701, ; 18: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 33
	i64 2329709569556905518, ; 19: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 37
	i64 2470498323731680442, ; 20: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 30
	i64 2547086958574651984, ; 21: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 26
	i64 2592350477072141967, ; 22: System.Xml.dll => 0x23f9e10627330e8f => 24
	i64 2624866290265602282, ; 23: mscorlib.dll => 0x246d65fbde2db8ea => 7
	i64 2960931600190307745, ; 24: Xamarin.Forms.Core => 0x2917579a49927da1 => 45
	i64 2973416776963745376, ; 25: XamForms.Controls.Calendar.dll => 0x2943b2ce081c6660 => 51
	i64 3017704767998173186, ; 26: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 49
	i64 3289520064315143713, ; 27: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 36
	i64 3522470458906976663, ; 28: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 42
	i64 3531994851595924923, ; 29: System.Numerics => 0x31042a9aade235bb => 19
	i64 3727469159507183293, ; 30: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 40
	i64 4337444564132831293, ; 31: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 12
	i64 4384128518524054744, ; 32: Rating => 0x3cd78da8d4492cd8 => 9
	i64 4525561845656915374, ; 33: System.ServiceModel.Internals => 0x3ece06856b710dae => 53
	i64 4794310189461587505, ; 34: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 26
	i64 4795410492532947900, ; 35: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 42
	i64 5142919913060024034, ; 36: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 46
	i64 5203618020066742981, ; 37: Xamarin.Essentials => 0x4836f704f0e652c5 => 44
	i64 5334137958787756892, ; 38: System.Reactive.Linq.dll => 0x4a06aa364878b35c => 22
	i64 5507995362134886206, ; 39: System.Core.dll => 0x4c705499688c873e => 16
	i64 6025176081837716467, ; 40: SQLitePCLRaw.lib.e_sqlite3.dll => 0x539db9b9431df3f3 => 14
	i64 6085203216496545422, ; 41: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 47
	i64 6086316965293125504, ; 42: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6183170893902868313, ; 43: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 12
	i64 6401687960814735282, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 37
	i64 6548213210057960872, ; 45: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 32
	i64 6659513131007730089, ; 46: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 35
	i64 6710414900318471453, ; 47: System.Reactive.Interfaces.dll => 0x5d202ecc6cf8851d => 21
	i64 6876862101832370452, ; 48: System.Xml.Linq => 0x5f6f85a57d108914 => 25
	i64 7023690708266455972, ; 49: AppTurismo.Android => 0x6179297c6e6f13a4 => 0
	i64 7046697327704092548, ; 50: System.Reactive.Interfaces => 0x61cae5e2717f2f84 => 21
	i64 7204980051946441770, ; 51: XamForms.Controls.Calendar => 0x63fd3b2f020b0c2a => 51
	i64 7488575175965059935, ; 52: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 25
	i64 7635363394907363464, ; 53: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 45
	i64 7637365915383206639, ; 54: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 44
	i64 7654504624184590948, ; 55: System.Net.Http => 0x6a3a4366801b8264 => 18
	i64 7735176074855944702, ; 56: Microsoft.CSharp => 0x6b58dda848e391fe => 55
	i64 7836164640616011524, ; 57: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 27
	i64 8083354569033831015, ; 58: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 36
	i64 8167236081217502503, ; 59: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 5
	i64 8470680757392014285, ; 60: System.Reactive.Linq => 0x758de744ee167bcd => 22
	i64 8562358305470590539, ; 61: System.Reactive.PlatformServices.dll => 0x76d39b837530ae4b => 23
	i64 8626175481042262068, ; 62: Java.Interop => 0x77b654e585b55834 => 5
	i64 8638972117149407195, ; 63: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 55
	i64 8702320156596882678, ; 64: Firebase.dll => 0x78c4da1357adccf6 => 3
	i64 9020037700568894461, ; 65: System.Reactive.Core => 0x7d2d9c7f9b0a4bfd => 20
	i64 9162065988803407493, ; 66: XamForms.Controls.Calendar.Droid.dll => 0x7f2632795f50ae85 => 52
	i64 9324707631942237306, ; 67: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 28
	i64 9419392115832876195, ; 68: System.Reactive.PlatformServices => 0x82b8673928556ca3 => 23
	i64 9662334977499516867, ; 69: System.Numerics.dll => 0x8617827802b0cfc3 => 19
	i64 9678050649315576968, ; 70: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 30
	i64 9793247711277112057, ; 71: SQLitePCLRaw.batteries_green.dll => 0x87e89ae814145af9 => 11
	i64 9808709177481450983, ; 72: Mono.Android.dll => 0x881f890734e555e7 => 6
	i64 9998632235833408227, ; 73: Mono.Security => 0x8ac2470b209ebae3 => 56
	i64 10038780035334861115, ; 74: System.Net.Http.dll => 0x8b50e941206af13b => 18
	i64 10144742755892837524, ; 75: Firebase => 0x8cc95dc98eb5bc94 => 3
	i64 10229024438826829339, ; 76: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 32
	i64 10430153318873392755, ; 77: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 31
	i64 10807679263882430897, ; 78: SQLitePCLRaw.batteries_green => 0x95fc97076a1149b1 => 11
	i64 11023048688141570732, ; 79: System.Core => 0x98f9bc61168392ac => 16
	i64 11037814507248023548, ; 80: System.Xml => 0x992e31d0412bf7fc => 24
	i64 11162124722117608902, ; 81: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 43
	i64 11345533118204769135, ; 82: XamForms.Controls.Calendar.Droid => 0x9d736e428206736f => 52
	i64 11529969570048099689, ; 83: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 43
	i64 11739066727115742305, ; 84: SQLite-net.dll => 0xa2e98afdf8575c61 => 10
	i64 11806260347154423189, ; 85: SQLite-net => 0xa3d8433bc5eb5d95 => 10
	i64 12279246230491828964, ; 86: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 15
	i64 12451044538927396471, ; 87: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 34
	i64 12466513435562512481, ; 88: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 39
	i64 12538491095302438457, ; 89: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 29
	i64 12963446364377008305, ; 90: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 54
	i64 13370592475155966277, ; 91: System.Runtime.Serialization => 0xb98de304062ea945 => 1
	i64 13454009404024712428, ; 92: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 50
	i64 13572454107664307259, ; 93: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 40
	i64 13959074834287824816, ; 94: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 34
	i64 13967638549803255703, ; 95: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 46
	i64 14003200928163735742, ; 96: AppTurismo.Android.dll => 0xc2555d0d519ea8be => 0
	i64 14124974489674258913, ; 97: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 29
	i64 14477163538861550588, ; 98: AppTurismo.dll => 0xc8e9378909146bfc => 2
	i64 14792063746108907174, ; 99: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 50
	i64 15370334346939861994, ; 100: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 31
	i64 15609085926864131306, ; 101: System.dll => 0xd89e9cf3334914ea => 17
	i64 15810740023422282496, ; 102: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 48
	i64 16154507427712707110, ; 103: System => 0xe03056ea4e39aa26 => 17
	i64 16266187189082433806, ; 104: System.Reactive.Core.dll => 0xe1bd1b110744a90e => 20
	i64 16392891804791780225, ; 105: SQLitePCLRaw.lib.e_sqlite3 => 0xe37f403e4206b381 => 14
	i64 16755018182064898362, ; 106: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 13
	i64 16833383113903931215, ; 107: mscorlib => 0xe99c30c1484d7f4f => 7
	i64 17704177640604968747, ; 108: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 39
	i64 17710060891934109755, ; 109: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 38
	i64 17882897186074144999, ; 110: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17892495832318972303, ; 111: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 48
	i64 18129453464017766560, ; 112: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 53
	i64 18351651312114064136 ; 113: AppTurismo => 0xfeae29a31c63db08 => 2
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [114 x i32] [
	i32 6, i32 41, i32 54, i32 35, i32 33, i32 47, i32 56, i32 49, ; 0..7
	i32 13, i32 1, i32 15, i32 27, i32 9, i32 8, i32 28, i32 41, ; 8..15
	i32 38, i32 8, i32 33, i32 37, i32 30, i32 26, i32 24, i32 7, ; 16..23
	i32 45, i32 51, i32 49, i32 36, i32 42, i32 19, i32 40, i32 12, ; 24..31
	i32 9, i32 53, i32 26, i32 42, i32 46, i32 44, i32 22, i32 16, ; 32..39
	i32 14, i32 47, i32 4, i32 12, i32 37, i32 32, i32 35, i32 21, ; 40..47
	i32 25, i32 0, i32 21, i32 51, i32 25, i32 45, i32 44, i32 18, ; 48..55
	i32 55, i32 27, i32 36, i32 5, i32 22, i32 23, i32 5, i32 55, ; 56..63
	i32 3, i32 20, i32 52, i32 28, i32 23, i32 19, i32 30, i32 11, ; 64..71
	i32 6, i32 56, i32 18, i32 3, i32 32, i32 31, i32 11, i32 16, ; 72..79
	i32 24, i32 43, i32 52, i32 43, i32 10, i32 10, i32 15, i32 34, ; 80..87
	i32 39, i32 29, i32 54, i32 1, i32 50, i32 40, i32 34, i32 46, ; 88..95
	i32 0, i32 29, i32 2, i32 50, i32 31, i32 17, i32 48, i32 17, ; 96..103
	i32 20, i32 14, i32 13, i32 7, i32 39, i32 38, i32 4, i32 48, ; 104..111
	i32 53, i32 2 ; 112..113
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
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

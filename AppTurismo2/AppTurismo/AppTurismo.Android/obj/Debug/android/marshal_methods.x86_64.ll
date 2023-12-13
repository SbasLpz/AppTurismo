; ModuleID = 'obj/Debug/android/marshal_methods.x86_64.ll'
source_filename = "obj/Debug/android/marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [232 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 17
	i64 196720943101637631, ; 1: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 105
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 49
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 73
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 74
	i64 634308326490598313, ; 5: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 64
	i64 702024105029695270, ; 6: System.Drawing.Common => 0x9be17343c0e7726 => 96
	i64 720058930071658100, ; 7: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 58
	i64 799765834175365804, ; 8: System.ComponentModel.dll => 0xb1956c9f18442ac => 10
	i64 872800313462103108, ; 9: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 55
	i64 940822596282819491, ; 10: System.Transactions => 0xd0e792aa81923a3 => 94
	i64 996343623809489702, ; 11: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 85
	i64 1000557547492888992, ; 12: Mono.Security.dll => 0xde2b1c9cba651a0 => 115
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 87
	i64 1301485588176585670, ; 14: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 23
	i64 1315114680217950157, ; 15: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 44
	i64 1425944114962822056, ; 16: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 12
	i64 1476839205573959279, ; 17: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 100
	i64 1518315023656898250, ; 18: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 25
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 42
	i64 1628611045998245443, ; 20: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 66
	i64 1636321030536304333, ; 21: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 59
	i64 1731380447121279447, ; 22: Newtonsoft.Json => 0x18071957e9b889d7 => 19
	i64 1795316252682057001, ; 23: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 43
	i64 1836611346387731153, ; 24: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 73
	i64 1875917498431009007, ; 25: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 40
	i64 1981742497975770890, ; 26: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 65
	i64 2133195048986300728, ; 27: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 19
	i64 2136356949452311481, ; 28: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 70
	i64 2165725771938924357, ; 29: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 47
	i64 2262844636196693701, ; 30: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 55
	i64 2284400282711631002, ; 31: System.Web.Services => 0x1fb3d1f42fd4249a => 99
	i64 2287834202362508563, ; 32: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 9
	i64 2329709569556905518, ; 33: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 62
	i64 2470498323731680442, ; 34: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 50
	i64 2479423007379663237, ; 35: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 77
	i64 2497223385847772520, ; 36: System.Runtime => 0x22a7eb7046413568 => 36
	i64 2547086958574651984, ; 37: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 39
	i64 2592350477072141967, ; 38: System.Xml.dll => 0x23f9e10627330e8f => 37
	i64 2624866290265602282, ; 39: mscorlib.dll => 0x246d65fbde2db8ea => 18
	i64 2960931600190307745, ; 40: Xamarin.Forms.Core => 0x2917579a49927da1 => 83
	i64 2973416776963745376, ; 41: XamForms.Controls.Calendar.dll => 0x2943b2ce081c6660 => 89
	i64 3017704767998173186, ; 42: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 87
	i64 3289520064315143713, ; 43: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 61
	i64 3303437397778967116, ; 44: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 41
	i64 3311221304742556517, ; 45: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 31
	i64 3522470458906976663, ; 46: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 75
	i64 3531994851595924923, ; 47: System.Numerics => 0x31042a9aade235bb => 30
	i64 3571415421602489686, ; 48: System.Runtime.dll => 0x319037675df7e556 => 36
	i64 3647754201059316852, ; 49: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 112
	i64 3716579019761409177, ; 50: netstandard.dll => 0x3393f0ed5c8c5c99 => 92
	i64 3727469159507183293, ; 51: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 72
	i64 3869649043256705283, ; 52: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 8
	i64 4009997192427317104, ; 53: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 109
	i64 4154383907710350974, ; 54: System.ComponentModel => 0x39a7562737acb67e => 10
	i64 4187479170553454871, ; 55: System.Linq.Expressions => 0x3a1cea1e912fa117 => 105
	i64 4337444564132831293, ; 56: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 22
	i64 4525561845656915374, ; 57: System.ServiceModel.Internals => 0x3ece06856b710dae => 91
	i64 4636684751163556186, ; 58: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 79
	i64 4782108999019072045, ; 59: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 46
	i64 4794310189461587505, ; 60: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 39
	i64 4795410492532947900, ; 61: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 75
	i64 5081566143765835342, ; 62: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 7
	i64 5099468265966638712, ; 63: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 7
	i64 5142919913060024034, ; 64: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 84
	i64 5203618020066742981, ; 65: Xamarin.Essentials => 0x4836f704f0e652c5 => 82
	i64 5205316157927637098, ; 66: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 68
	i64 5334137958787756892, ; 67: System.Reactive.Linq.dll => 0x4a06aa364878b35c => 34
	i64 5348796042099802469, ; 68: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 69
	i64 5376510917114486089, ; 69: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 77
	i64 5408338804355907810, ; 70: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 76
	i64 5446034149219586269, ; 71: System.Diagnostics.Debug => 0x4b94333452e150dd => 2
	i64 5507995362134886206, ; 72: System.Core.dll => 0x4c705499688c873e => 26
	i64 5692067934154308417, ; 73: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 81
	i64 5896680224035167651, ; 74: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 63
	i64 6025176081837716467, ; 75: SQLitePCLRaw.lib.e_sqlite3.dll => 0x539db9b9431df3f3 => 24
	i64 6085203216496545422, ; 76: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 85
	i64 6086316965293125504, ; 77: FormsViewGroup.dll => 0x5476f10882baef80 => 15
	i64 6183170893902868313, ; 78: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 22
	i64 6319713645133255417, ; 79: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 64
	i64 6401687960814735282, ; 80: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 62
	i64 6504860066809920875, ; 81: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 47
	i64 6548213210057960872, ; 82: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 53
	i64 6591024623626361694, ; 83: System.Web.Services.dll => 0x5b7805f9751a1b5e => 99
	i64 6659513131007730089, ; 84: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 58
	i64 6710414900318471453, ; 85: System.Reactive.Interfaces.dll => 0x5d202ecc6cf8851d => 33
	i64 6814185388980153342, ; 86: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 108
	i64 6876862101832370452, ; 87: System.Xml.Linq => 0x5f6f85a57d108914 => 38
	i64 6894844156784520562, ; 88: System.Numerics.Vectors => 0x5faf683aead1ad72 => 31
	i64 7023690708266455972, ; 89: AppTurismo.Android => 0x6179297c6e6f13a4 => 0
	i64 7036436454368433159, ; 90: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 60
	i64 7046697327704092548, ; 91: System.Reactive.Interfaces => 0x61cae5e2717f2f84 => 33
	i64 7103753931438454322, ; 92: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 57
	i64 7141577505875122296, ; 93: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 11
	i64 7204980051946441770, ; 94: XamForms.Controls.Calendar => 0x63fd3b2f020b0c2a => 89
	i64 7270811800166795866, ; 95: System.Linq => 0x64e71ccf51a90a5a => 106
	i64 7338192458477945005, ; 96: System.Reflection => 0x65d67f295d0740ad => 104
	i64 7488575175965059935, ; 97: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 38
	i64 7489048572193775167, ; 98: System.ObjectModel => 0x67ee71ff6b419e3f => 103
	i64 7635363394907363464, ; 99: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 83
	i64 7637365915383206639, ; 100: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 82
	i64 7654504624184590948, ; 101: System.Net.Http => 0x6a3a4366801b8264 => 29
	i64 7735176074855944702, ; 102: Microsoft.CSharp => 0x6b58dda848e391fe => 114
	i64 7820441508502274321, ; 103: System.Data => 0x6c87ca1e14ff8111 => 93
	i64 7836164640616011524, ; 104: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 42
	i64 8044118961405839122, ; 105: System.ComponentModel.Composition => 0x6fa2739369944712 => 98
	i64 8064050204834738623, ; 106: System.Collections.dll => 0x6fe942efa61731bf => 3
	i64 8083354569033831015, ; 107: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 61
	i64 8103644804370223335, ; 108: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 95
	i64 8113615946733131500, ; 109: System.Reflection.Extensions => 0x70995ab73cf916ec => 6
	i64 8167236081217502503, ; 110: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 16
	i64 8185542183669246576, ; 111: System.Collections => 0x7198e33f4794aa70 => 3
	i64 8290740647658429042, ; 112: System.Runtime.Extensions => 0x730ea0b15c929a72 => 101
	i64 8470680757392014285, ; 113: System.Reactive.Linq => 0x758de744ee167bcd => 34
	i64 8562358305470590539, ; 114: System.Reactive.PlatformServices.dll => 0x76d39b837530ae4b => 35
	i64 8601935802264776013, ; 115: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 76
	i64 8626175481042262068, ; 116: Java.Interop => 0x77b654e585b55834 => 16
	i64 8638972117149407195, ; 117: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 114
	i64 8684531736582871431, ; 118: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 97
	i64 8702320156596882678, ; 119: Firebase.dll => 0x78c4da1357adccf6 => 14
	i64 8941376889969657626, ; 120: System.Xml.XDocument => 0x7c1626e87187471a => 108
	i64 9020037700568894461, ; 121: System.Reactive.Core => 0x7d2d9c7f9b0a4bfd => 32
	i64 9162065988803407493, ; 122: XamForms.Controls.Calendar.Droid.dll => 0x7f2632795f50ae85 => 90
	i64 9312692141327339315, ; 123: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 81
	i64 9324707631942237306, ; 124: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 43
	i64 9419392115832876195, ; 125: System.Reactive.PlatformServices => 0x82b8673928556ca3 => 35
	i64 9584643793929893533, ; 126: System.IO.dll => 0x85037ebfbbd7f69d => 102
	i64 9659729154652888475, ; 127: System.Text.RegularExpressions => 0x860e407c9991dd9b => 111
	i64 9662334977499516867, ; 128: System.Numerics.dll => 0x8617827802b0cfc3 => 30
	i64 9678050649315576968, ; 129: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 50
	i64 9711637524876806384, ; 130: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 69
	i64 9793247711277112057, ; 131: SQLitePCLRaw.batteries_green.dll => 0x87e89ae814145af9 => 21
	i64 9808709177481450983, ; 132: Mono.Android.dll => 0x881f890734e555e7 => 17
	i64 9834056768316610435, ; 133: System.Transactions.dll => 0x8879968718899783 => 94
	i64 9998632235833408227, ; 134: Mono.Security => 0x8ac2470b209ebae3 => 115
	i64 10038780035334861115, ; 135: System.Net.Http.dll => 0x8b50e941206af13b => 29
	i64 10144742755892837524, ; 136: Firebase => 0x8cc95dc98eb5bc94 => 14
	i64 10229024438826829339, ; 137: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 53
	i64 10360651442923773544, ; 138: System.Text.Encoding => 0x8fc86d98211c1e68 => 107
	i64 10430153318873392755, ; 139: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 51
	i64 10566960649245365243, ; 140: System.Globalization.dll => 0x92a562b96dcd13fb => 5
	i64 10714184849103829812, ; 141: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 101
	i64 10785150219063592792, ; 142: System.Net.Primitives => 0x95ac8cfb68830758 => 100
	i64 10807679263882430897, ; 143: SQLitePCLRaw.batteries_green => 0x95fc97076a1149b1 => 21
	i64 10847732767863316357, ; 144: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 44
	i64 11023048688141570732, ; 145: System.Core => 0x98f9bc61168392ac => 26
	i64 11037814507248023548, ; 146: System.Xml => 0x992e31d0412bf7fc => 37
	i64 11162124722117608902, ; 147: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 80
	i64 11340910727871153756, ; 148: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 52
	i64 11345533118204769135, ; 149: XamForms.Controls.Calendar.Droid => 0x9d736e428206736f => 90
	i64 11392833485892708388, ; 150: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 71
	i64 11529969570048099689, ; 151: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 80
	i64 11578238080964724296, ; 152: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 60
	i64 11580057168383206117, ; 153: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 40
	i64 11597940890313164233, ; 154: netstandard => 0xa0f429ca8d1805c9 => 92
	i64 11672361001936329215, ; 155: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 57
	i64 11739066727115742305, ; 156: SQLite-net.dll => 0xa2e98afdf8575c61 => 20
	i64 11743665907891708234, ; 157: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 1
	i64 11806260347154423189, ; 158: SQLite-net => 0xa3d8433bc5eb5d95 => 20
	i64 12123043025855404482, ; 159: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 6
	i64 12137774235383566651, ; 160: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 78
	i64 12201331334810686224, ; 161: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 109
	i64 12279246230491828964, ; 162: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 25
	i64 12451044538927396471, ; 163: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 56
	i64 12466513435562512481, ; 164: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 67
	i64 12487638416075308985, ; 165: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 54
	i64 12538491095302438457, ; 166: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 48
	i64 12550732019250633519, ; 167: System.IO.Compression => 0xae2d28465e8e1b2f => 28
	i64 12700543734426720211, ; 168: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 49
	i64 12708238894395270091, ; 169: System.IO => 0xb05cbbf17d3ba3cb => 102
	i64 12708922737231849740, ; 170: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 113
	i64 12963446364377008305, ; 171: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 96
	i64 13370592475155966277, ; 172: System.Runtime.Serialization => 0xb98de304062ea945 => 12
	i64 13401370062847626945, ; 173: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 78
	i64 13454009404024712428, ; 174: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 88
	i64 13491513212026656886, ; 175: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 45
	i64 13572454107664307259, ; 176: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 72
	i64 13647894001087880694, ; 177: System.Data.dll => 0xbd670f48cb071df6 => 93
	i64 13702626353344114072, ; 178: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 8
	i64 13713329104121190199, ; 179: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 110
	i64 13959074834287824816, ; 180: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 56
	i64 13967638549803255703, ; 181: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 84
	i64 14003200928163735742, ; 182: AppTurismo.Android.dll => 0xc2555d0d519ea8be => 0
	i64 14124974489674258913, ; 183: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 48
	i64 14125464355221830302, ; 184: System.Threading.dll => 0xc407bafdbc707a9e => 4
	i64 14172845254133543601, ; 185: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 70
	i64 14254574811015963973, ; 186: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 113
	i64 14261073672896646636, ; 187: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 71
	i64 14327695147300244862, ; 188: System.Reflection.dll => 0xc6d632d338eb4d7e => 104
	i64 14477163538861550588, ; 189: AppTurismo.dll => 0xc8e9378909146bfc => 13
	i64 14486659737292545672, ; 190: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 63
	i64 14644440854989303794, ; 191: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 68
	i64 14792063746108907174, ; 192: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 88
	i64 14852515768018889994, ; 193: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 52
	i64 14987728460634540364, ; 194: System.IO.Compression.dll => 0xcfff1ba06622494c => 28
	i64 14988210264188246988, ; 195: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 54
	i64 15076659072870671916, ; 196: System.ObjectModel.dll => 0xd13b0d8c1620662c => 103
	i64 15133485256822086103, ; 197: System.Linq.dll => 0xd204f0a9127dd9d7 => 106
	i64 15234786388537674379, ; 198: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 110
	i64 15370334346939861994, ; 199: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 51
	i64 15526743539506359484, ; 200: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 107
	i64 15582737692548360875, ; 201: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 66
	i64 15609085926864131306, ; 202: System.dll => 0xd89e9cf3334914ea => 27
	i64 15661133872274321916, ; 203: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 112
	i64 15777549416145007739, ; 204: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 74
	i64 15810740023422282496, ; 205: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 86
	i64 15817206913877585035, ; 206: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 1
	i64 16154507427712707110, ; 207: System => 0xe03056ea4e39aa26 => 27
	i64 16266187189082433806, ; 208: System.Reactive.Core.dll => 0xe1bd1b110744a90e => 32
	i64 16392891804791780225, ; 209: SQLitePCLRaw.lib.e_sqlite3 => 0xe37f403e4206b381 => 24
	i64 16565028646146589191, ; 210: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 98
	i64 16755018182064898362, ; 211: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 23
	i64 16822611501064131242, ; 212: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 95
	i64 16833383113903931215, ; 213: mscorlib => 0xe99c30c1484d7f4f => 18
	i64 16866861824412579935, ; 214: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 11
	i64 16890310621557459193, ; 215: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 111
	i64 17024911836938395553, ; 216: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 41
	i64 17037200463775726619, ; 217: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 59
	i64 17544493274320527064, ; 218: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 46
	i64 17627500474728259406, ; 219: System.Globalization => 0xf4a176498a351f4e => 5
	i64 17685921127322830888, ; 220: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 2
	i64 17704177640604968747, ; 221: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 67
	i64 17710060891934109755, ; 222: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 65
	i64 17882897186074144999, ; 223: FormsViewGroup => 0xf82cd03e3ac830e7 => 15
	i64 17892495832318972303, ; 224: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 86
	i64 17928294245072900555, ; 225: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 97
	i64 18025913125965088385, ; 226: System.Threading => 0xfa28e87b91334681 => 4
	i64 18116111925905154859, ; 227: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 45
	i64 18129453464017766560, ; 228: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 91
	i64 18245806341561545090, ; 229: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 9
	i64 18351651312114064136, ; 230: AppTurismo => 0xfeae29a31c63db08 => 13
	i64 18380184030268848184 ; 231: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 79
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [232 x i32] [
	i32 17, i32 105, i32 49, i32 73, i32 74, i32 64, i32 96, i32 58, ; 0..7
	i32 10, i32 55, i32 94, i32 85, i32 115, i32 87, i32 23, i32 44, ; 8..15
	i32 12, i32 100, i32 25, i32 42, i32 66, i32 59, i32 19, i32 43, ; 16..23
	i32 73, i32 40, i32 65, i32 19, i32 70, i32 47, i32 55, i32 99, ; 24..31
	i32 9, i32 62, i32 50, i32 77, i32 36, i32 39, i32 37, i32 18, ; 32..39
	i32 83, i32 89, i32 87, i32 61, i32 41, i32 31, i32 75, i32 30, ; 40..47
	i32 36, i32 112, i32 92, i32 72, i32 8, i32 109, i32 10, i32 105, ; 48..55
	i32 22, i32 91, i32 79, i32 46, i32 39, i32 75, i32 7, i32 7, ; 56..63
	i32 84, i32 82, i32 68, i32 34, i32 69, i32 77, i32 76, i32 2, ; 64..71
	i32 26, i32 81, i32 63, i32 24, i32 85, i32 15, i32 22, i32 64, ; 72..79
	i32 62, i32 47, i32 53, i32 99, i32 58, i32 33, i32 108, i32 38, ; 80..87
	i32 31, i32 0, i32 60, i32 33, i32 57, i32 11, i32 89, i32 106, ; 88..95
	i32 104, i32 38, i32 103, i32 83, i32 82, i32 29, i32 114, i32 93, ; 96..103
	i32 42, i32 98, i32 3, i32 61, i32 95, i32 6, i32 16, i32 3, ; 104..111
	i32 101, i32 34, i32 35, i32 76, i32 16, i32 114, i32 97, i32 14, ; 112..119
	i32 108, i32 32, i32 90, i32 81, i32 43, i32 35, i32 102, i32 111, ; 120..127
	i32 30, i32 50, i32 69, i32 21, i32 17, i32 94, i32 115, i32 29, ; 128..135
	i32 14, i32 53, i32 107, i32 51, i32 5, i32 101, i32 100, i32 21, ; 136..143
	i32 44, i32 26, i32 37, i32 80, i32 52, i32 90, i32 71, i32 80, ; 144..151
	i32 60, i32 40, i32 92, i32 57, i32 20, i32 1, i32 20, i32 6, ; 152..159
	i32 78, i32 109, i32 25, i32 56, i32 67, i32 54, i32 48, i32 28, ; 160..167
	i32 49, i32 102, i32 113, i32 96, i32 12, i32 78, i32 88, i32 45, ; 168..175
	i32 72, i32 93, i32 8, i32 110, i32 56, i32 84, i32 0, i32 48, ; 176..183
	i32 4, i32 70, i32 113, i32 71, i32 104, i32 13, i32 63, i32 68, ; 184..191
	i32 88, i32 52, i32 28, i32 54, i32 103, i32 106, i32 110, i32 51, ; 192..199
	i32 107, i32 66, i32 27, i32 112, i32 74, i32 86, i32 1, i32 27, ; 200..207
	i32 32, i32 24, i32 98, i32 23, i32 95, i32 18, i32 11, i32 111, ; 208..215
	i32 41, i32 59, i32 46, i32 5, i32 2, i32 67, i32 65, i32 15, ; 216..223
	i32 86, i32 97, i32 4, i32 45, i32 91, i32 9, i32 13, i32 79 ; 232..231
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}

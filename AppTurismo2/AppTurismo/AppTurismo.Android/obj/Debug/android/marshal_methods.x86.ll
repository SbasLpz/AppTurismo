; ModuleID = 'obj/Debug/android/marshal_methods.x86.ll'
source_filename = "obj/Debug/android/marshal_methods.x86.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [232 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 64
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 88
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 19
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 83
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 74
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 74
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 49
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 75
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 10
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 47
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 2
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 59
	i32 230752869, ; 12: Microsoft.CSharp.dll => 0xdc10265 => 114
	i32 231814094, ; 13: System.Globalization => 0xdd133ce => 5
	i32 232815796, ; 14: System.Web.Services => 0xde07cb4 => 99
	i32 278686392, ; 15: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 63
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 57
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 39
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 30
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 61
	i32 393699800, ; 20: Firebase => 0x177761d8 => 14
	i32 442521989, ; 21: Xamarin.Essentials => 0x1a605985 => 82
	i32 442565967, ; 22: System.Collections => 0x1a61054f => 3
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 56
	i32 459347974, ; 24: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 109
	i32 465612405, ; 25: AppTurismo.dll => 0x1bc0ae75 => 13
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 18
	i32 469710990, ; 27: System.dll => 0x1bff388e => 27
	i32 476646585, ; 28: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 57
	i32 486930444, ; 29: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 68
	i32 498788369, ; 30: System.ObjectModel => 0x1dbae811 => 103
	i32 526420162, ; 31: System.Transactions.dll => 0x1f6088c2 => 94
	i32 545304856, ; 32: System.Runtime.Extensions => 0x2080b118 => 101
	i32 566111323, ; 33: AppTurismo.Android.dll => 0x21be2c5b => 0
	i32 605376203, ; 34: System.IO.Compression.FileSystem => 0x24154ecb => 97
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 53
	i32 663517072, ; 36: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 79
	i32 666292255, ; 37: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 44
	i32 672442732, ; 38: System.Collections.Concurrent => 0x2814a96c => 9
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 38
	i32 748832960, ; 40: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 22
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 28
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 96
	i32 831745141, ; 43: System.Reactive.Linq => 0x31936c75 => 34
	i32 843511501, ; 44: Xamarin.AndroidX.Print => 0x3246f6cd => 71
	i32 877678880, ; 45: System.Globalization.dll => 0x34505120 => 5
	i32 928116545, ; 46: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 88
	i32 955402788, ; 47: Newtonsoft.Json => 0x38f24a24 => 19
	i32 967690846, ; 48: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 61
	i32 974778368, ; 49: FormsViewGroup.dll => 0x3a19f000 => 15
	i32 975874589, ; 50: System.Xml.XDocument => 0x3a2aaa1d => 108
	i32 987214855, ; 51: System.Diagnostics.Tools => 0x3ad7b407 => 8
	i32 992768348, ; 52: System.Collections.dll => 0x3b2c715c => 3
	i32 1012816738, ; 53: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 73
	i32 1035644815, ; 54: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 43
	i32 1042160112, ; 55: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 85
	i32 1044663988, ; 56: System.Linq.Expressions.dll => 0x3e444eb4 => 105
	i32 1052210849, ; 57: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 65
	i32 1098259244, ; 58: System => 0x41761b2c => 27
	i32 1175144683, ; 59: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 77
	i32 1204270330, ; 60: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 44
	i32 1242515254, ; 61: AppTurismo => 0x4a0f4736 => 13
	i32 1267360935, ; 62: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 78
	i32 1292207520, ; 63: SQLitePCLRaw.core.dll => 0x4d0585a0 => 23
	i32 1293217323, ; 64: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 55
	i32 1324164729, ; 65: System.Linq => 0x4eed2679 => 106
	i32 1364015309, ; 66: System.IO => 0x514d38cd => 102
	i32 1365406463, ; 67: System.ServiceModel.Internals.dll => 0x516272ff => 91
	i32 1376866003, ; 68: Xamarin.AndroidX.SavedState => 0x52114ed3 => 73
	i32 1379779777, ; 69: System.Resources.ResourceManager => 0x523dc4c1 => 7
	i32 1395857551, ; 70: Xamarin.AndroidX.Media.dll => 0x5333188f => 69
	i32 1406073936, ; 71: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 50
	i32 1453312822, ; 72: System.Diagnostics.Tools.dll => 0x569fcb36 => 8
	i32 1454233054, ; 73: SQLitePCLRaw.lib.e_sqlite3.dll => 0x56add5de => 24
	i32 1457743152, ; 74: System.Runtime.Extensions.dll => 0x56e36530 => 101
	i32 1460219004, ; 75: Xamarin.Forms.Xaml => 0x57092c7c => 86
	i32 1462112819, ; 76: System.IO.Compression.dll => 0x57261233 => 28
	i32 1469204771, ; 77: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 42
	i32 1543031311, ; 78: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 111
	i32 1550322496, ; 79: System.Reflection.Extensions.dll => 0x5c680b40 => 6
	i32 1582372066, ; 80: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 54
	i32 1592978981, ; 81: System.Runtime.Serialization.dll => 0x5ef2ee25 => 12
	i32 1622152042, ; 82: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 67
	i32 1622358360, ; 83: System.Dynamic.Runtime => 0x60b33958 => 110
	i32 1624863272, ; 84: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 81
	i32 1636350590, ; 85: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 52
	i32 1639515021, ; 86: System.Net.Http.dll => 0x61b9038d => 29
	i32 1639986890, ; 87: System.Text.RegularExpressions => 0x61c036ca => 111
	i32 1657153582, ; 88: System.Runtime => 0x62c6282e => 36
	i32 1658251792, ; 89: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 87
	i32 1677501392, ; 90: System.Net.Primitives.dll => 0x63fca3d0 => 100
	i32 1701541528, ; 91: System.Diagnostics.Debug.dll => 0x656b7698 => 2
	i32 1726116996, ; 92: System.Reflection.dll => 0x66e27484 => 104
	i32 1729485958, ; 93: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 48
	i32 1765942094, ; 94: System.Reflection.Extensions => 0x6942234e => 6
	i32 1766324549, ; 95: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 75
	i32 1776026572, ; 96: System.Core.dll => 0x69dc03cc => 26
	i32 1788241197, ; 97: Xamarin.AndroidX.Fragment => 0x6a96652d => 56
	i32 1808609942, ; 98: Xamarin.AndroidX.Loader => 0x6bcd3296 => 67
	i32 1813201214, ; 99: Xamarin.Google.Android.Material => 0x6c13413e => 87
	i32 1824175904, ; 100: System.Text.Encoding.Extensions => 0x6cbab720 => 113
	i32 1858542181, ; 101: System.Linq.Expressions => 0x6ec71a65 => 105
	i32 1867746548, ; 102: Xamarin.Essentials.dll => 0x6f538cf4 => 82
	i32 1878053835, ; 103: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 86
	i32 1885316902, ; 104: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 45
	i32 1900610850, ; 105: System.Resources.ResourceManager.dll => 0x71490522 => 7
	i32 1904755420, ; 106: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 11
	i32 1919157823, ; 107: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 70
	i32 2019465201, ; 108: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 65
	i32 2019533804, ; 109: SQLitePCLRaw.lib.e_sqlite3 => 0x785fa3ec => 24
	i32 2055257422, ; 110: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 62
	i32 2079903147, ; 111: System.Runtime.dll => 0x7bf8cdab => 36
	i32 2090596640, ; 112: System.Numerics.Vectors => 0x7c9bf920 => 31
	i32 2097448633, ; 113: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 58
	i32 2103459038, ; 114: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 25
	i32 2126786730, ; 115: Xamarin.Forms.Platform.Android => 0x7ec430aa => 84
	i32 2193016926, ; 116: System.ObjectModel.dll => 0x82b6c85e => 103
	i32 2201231467, ; 117: System.Net.Http => 0x8334206b => 29
	i32 2217644978, ; 118: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 77
	i32 2244775296, ; 119: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 68
	i32 2256548716, ; 120: Xamarin.AndroidX.MultiDex => 0x8680336c => 70
	i32 2261435625, ; 121: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 60
	i32 2279755925, ; 122: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 72
	i32 2292630417, ; 123: System.Reactive.PlatformServices.dll => 0x88a6c391 => 35
	i32 2303054758, ; 124: System.Reactive.Interfaces.dll => 0x8945d3a6 => 33
	i32 2315684594, ; 125: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 40
	i32 2353062107, ; 126: System.Net.Primitives => 0x8c40e0db => 100
	i32 2368005991, ; 127: System.Xml.ReaderWriter.dll => 0x8d24e767 => 112
	i32 2373047941, ; 128: XamForms.Controls.Calendar.Droid => 0x8d71d685 => 90
	i32 2454642406, ; 129: System.Text.Encoding.dll => 0x924edee6 => 107
	i32 2465273461, ; 130: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 22
	i32 2471841756, ; 131: netstandard.dll => 0x93554fdc => 92
	i32 2475788418, ; 132: Java.Interop.dll => 0x93918882 => 16
	i32 2501346920, ; 133: System.Data.DataSetExtensions => 0x95178668 => 95
	i32 2505896520, ; 134: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 64
	i32 2525193637, ; 135: AppTurismo.Android => 0x968365a5 => 0
	i32 2562349572, ; 136: Microsoft.CSharp => 0x98ba5a04 => 114
	i32 2581819634, ; 137: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 78
	i32 2585220780, ; 138: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 113
	i32 2620871830, ; 139: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 52
	i32 2633051222, ; 140: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 63
	i32 2664396074, ; 141: System.Xml.XDocument.dll => 0x9ecf752a => 108
	i32 2693849962, ; 142: System.IO.dll => 0xa090e36a => 102
	i32 2715334215, ; 143: System.Threading.Tasks.dll => 0xa1d8b647 => 1
	i32 2732626843, ; 144: Xamarin.AndroidX.Activity => 0xa2e0939b => 39
	i32 2737747696, ; 145: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 42
	i32 2766581644, ; 146: Xamarin.Forms.Core => 0xa4e6af8c => 83
	i32 2778768386, ; 147: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 80
	i32 2810250172, ; 148: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 50
	i32 2819470561, ; 149: System.Xml.dll => 0xa80db4e1 => 37
	i32 2853208004, ; 150: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 80
	i32 2855708567, ; 151: Xamarin.AndroidX.Transition => 0xaa36a797 => 76
	i32 2900621748, ; 152: System.Dynamic.Runtime.dll => 0xace3f9b4 => 110
	i32 2901442782, ; 153: System.Reflection => 0xacf080de => 104
	i32 2903344695, ; 154: System.ComponentModel.Composition => 0xad0d8637 => 98
	i32 2905242038, ; 155: mscorlib.dll => 0xad2a79b6 => 18
	i32 2916838712, ; 156: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 81
	i32 2919462931, ; 157: System.Numerics.Vectors.dll => 0xae037813 => 31
	i32 2921128767, ; 158: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 41
	i32 2959614098, ; 159: System.ComponentModel.dll => 0xb0682092 => 10
	i32 2978675010, ; 160: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 55
	i32 3024354802, ; 161: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 59
	i32 3044182254, ; 162: FormsViewGroup => 0xb57288ee => 15
	i32 3075834255, ; 163: System.Threading.Tasks => 0xb755818f => 1
	i32 3111772706, ; 164: System.Runtime.Serialization => 0xb979e222 => 12
	i32 3204380047, ; 165: System.Data.dll => 0xbefef58f => 93
	i32 3211777861, ; 166: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 54
	i32 3220365878, ; 167: System.Threading => 0xbff2e236 => 4
	i32 3247949154, ; 168: Mono.Security => 0xc197c562 => 115
	i32 3258312781, ; 169: Xamarin.AndroidX.CardView => 0xc235e84d => 48
	i32 3267021929, ; 170: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 46
	i32 3282591531, ; 171: System.Reactive.Interfaces => 0xc3a85f2b => 33
	i32 3286872994, ; 172: SQLite-net.dll => 0xc3e9b3a2 => 20
	i32 3299363146, ; 173: System.Text.Encoding => 0xc4a8494a => 107
	i32 3300173928, ; 174: System.Reactive.Core => 0xc4b4a868 => 32
	i32 3317135071, ; 175: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 53
	i32 3317144872, ; 176: System.Data => 0xc5b79d28 => 93
	i32 3322403133, ; 177: Firebase.dll => 0xc607d93d => 14
	i32 3340431453, ; 178: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 45
	i32 3353484488, ; 179: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 58
	i32 3360279109, ; 180: SQLitePCLRaw.core => 0xc849ca45 => 23
	i32 3362522851, ; 181: Xamarin.AndroidX.Core => 0xc86c06e3 => 51
	i32 3366347497, ; 182: Java.Interop => 0xc8a662e9 => 16
	i32 3374999561, ; 183: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 72
	i32 3404865022, ; 184: System.ServiceModel.Internals => 0xcaf21dfe => 91
	i32 3425410982, ; 185: System.Reactive.Core.dll => 0xcc2b9fa6 => 32
	i32 3429136800, ; 186: System.Xml => 0xcc6479a0 => 37
	i32 3430777524, ; 187: netstandard => 0xcc7d82b4 => 92
	i32 3476120550, ; 188: Mono.Android => 0xcf3163e6 => 17
	i32 3486566296, ; 189: System.Transactions => 0xcfd0c798 => 94
	i32 3501239056, ; 190: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 46
	i32 3509114376, ; 191: System.Xml.Linq => 0xd128d608 => 38
	i32 3536029504, ; 192: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 84
	i32 3543730307, ; 193: SQLitePCLRaw.batteries_green.dll => 0xd3390883 => 21
	i32 3567349600, ; 194: System.ComponentModel.Composition.dll => 0xd4a16f60 => 98
	i32 3586971312, ; 195: XamForms.Controls.Calendar.Droid.dll => 0xd5ccd6b0 => 90
	i32 3608519521, ; 196: System.Linq.dll => 0xd715a361 => 106
	i32 3627220390, ; 197: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 71
	i32 3632359727, ; 198: Xamarin.Forms.Platform => 0xd881692f => 85
	i32 3633644679, ; 199: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 41
	i32 3641597786, ; 200: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 62
	i32 3641967938, ; 201: SQLitePCLRaw.batteries_green => 0xd9140542 => 21
	i32 3672681054, ; 202: Mono.Android.dll => 0xdae8aa5e => 17
	i32 3676310014, ; 203: System.Web.Services.dll => 0xdb2009fe => 99
	i32 3682565725, ; 204: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 47
	i32 3684933406, ; 205: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 11
	i32 3689375977, ; 206: System.Drawing.Common => 0xdbe768e9 => 96
	i32 3718780102, ; 207: Xamarin.AndroidX.Annotation => 0xdda814c6 => 40
	i32 3754567612, ; 208: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 25
	i32 3758932259, ; 209: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 60
	i32 3760520151, ; 210: System.Reactive.Linq.dll => 0xe024fbd7 => 34
	i32 3786282454, ; 211: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 49
	i32 3822602673, ; 212: Xamarin.AndroidX.Media => 0xe3d849b1 => 69
	i32 3829621856, ; 213: System.Numerics.dll => 0xe4436460 => 30
	i32 3835113687, ; 214: System.Reactive.PlatformServices => 0xe49730d7 => 35
	i32 3876362041, ; 215: SQLite-net => 0xe70c9739 => 20
	i32 3885922214, ; 216: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 76
	i32 3896106733, ; 217: System.Collections.Concurrent.dll => 0xe839deed => 9
	i32 3896760992, ; 218: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 51
	i32 3920810846, ; 219: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 97
	i32 3921031405, ; 220: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 79
	i32 3928044579, ; 221: System.Xml.ReaderWriter => 0xea213423 => 112
	i32 3945713374, ; 222: System.Data.DataSetExtensions.dll => 0xeb2ecede => 95
	i32 3955647286, ; 223: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 43
	i32 4014908255, ; 224: XamForms.Controls.Calendar => 0xef4ea35f => 89
	i32 4073602200, ; 225: System.Threading.dll => 0xf2ce3c98 => 4
	i32 4105002889, ; 226: Mono.Security.dll => 0xf4ad5f89 => 115
	i32 4151237749, ; 227: System.Core => 0xf76edc75 => 26
	i32 4181436372, ; 228: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 109
	i32 4182413190, ; 229: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 66
	i32 4220811361, ; 230: XamForms.Controls.Calendar.dll => 0xfb947861 => 89
	i32 4292120959 ; 231: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 66
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [232 x i32] [
	i32 64, i32 88, i32 19, i32 83, i32 74, i32 74, i32 49, i32 75, ; 0..7
	i32 10, i32 47, i32 2, i32 59, i32 114, i32 5, i32 99, i32 63, ; 8..15
	i32 57, i32 39, i32 30, i32 61, i32 14, i32 82, i32 3, i32 56, ; 16..23
	i32 109, i32 13, i32 18, i32 27, i32 57, i32 68, i32 103, i32 94, ; 24..31
	i32 101, i32 0, i32 97, i32 53, i32 79, i32 44, i32 9, i32 38, ; 32..39
	i32 22, i32 28, i32 96, i32 34, i32 71, i32 5, i32 88, i32 19, ; 40..47
	i32 61, i32 15, i32 108, i32 8, i32 3, i32 73, i32 43, i32 85, ; 48..55
	i32 105, i32 65, i32 27, i32 77, i32 44, i32 13, i32 78, i32 23, ; 56..63
	i32 55, i32 106, i32 102, i32 91, i32 73, i32 7, i32 69, i32 50, ; 64..71
	i32 8, i32 24, i32 101, i32 86, i32 28, i32 42, i32 111, i32 6, ; 72..79
	i32 54, i32 12, i32 67, i32 110, i32 81, i32 52, i32 29, i32 111, ; 80..87
	i32 36, i32 87, i32 100, i32 2, i32 104, i32 48, i32 6, i32 75, ; 88..95
	i32 26, i32 56, i32 67, i32 87, i32 113, i32 105, i32 82, i32 86, ; 96..103
	i32 45, i32 7, i32 11, i32 70, i32 65, i32 24, i32 62, i32 36, ; 104..111
	i32 31, i32 58, i32 25, i32 84, i32 103, i32 29, i32 77, i32 68, ; 112..119
	i32 70, i32 60, i32 72, i32 35, i32 33, i32 40, i32 100, i32 112, ; 120..127
	i32 90, i32 107, i32 22, i32 92, i32 16, i32 95, i32 64, i32 0, ; 128..135
	i32 114, i32 78, i32 113, i32 52, i32 63, i32 108, i32 102, i32 1, ; 136..143
	i32 39, i32 42, i32 83, i32 80, i32 50, i32 37, i32 80, i32 76, ; 144..151
	i32 110, i32 104, i32 98, i32 18, i32 81, i32 31, i32 41, i32 10, ; 152..159
	i32 55, i32 59, i32 15, i32 1, i32 12, i32 93, i32 54, i32 4, ; 160..167
	i32 115, i32 48, i32 46, i32 33, i32 20, i32 107, i32 32, i32 53, ; 168..175
	i32 93, i32 14, i32 45, i32 58, i32 23, i32 51, i32 16, i32 72, ; 176..183
	i32 91, i32 32, i32 37, i32 92, i32 17, i32 94, i32 46, i32 38, ; 184..191
	i32 84, i32 21, i32 98, i32 90, i32 106, i32 71, i32 85, i32 41, ; 192..199
	i32 62, i32 21, i32 17, i32 99, i32 47, i32 11, i32 96, i32 40, ; 200..207
	i32 25, i32 60, i32 34, i32 49, i32 69, i32 30, i32 35, i32 20, ; 208..215
	i32 76, i32 9, i32 51, i32 97, i32 79, i32 112, i32 95, i32 43, ; 216..223
	i32 89, i32 4, i32 115, i32 26, i32 109, i32 66, i32 89, i32 66 ; 232..231
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

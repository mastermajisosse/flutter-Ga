// import 'dart:io';

// import 'package:firebase_admob/firebase_admob.dart';
// import 'package:truthdarefr/save.dart';

// const String testDevice = 'YOUR_DEVICE_ID';

// const String myappid = 'ca-app-pub-9331906778457556~1010995468';
// const String bannerid = 'ca-app-pub-9331906778457556/7384832126';
// const String interid = 'ca-app-pub-9331906778457556/4811667346';

// const String banneridios = 'ca-app-pub-9331906778457556/9397735455';
// const String interidios = 'ca-app-pub-9331906778457556/6726328321';

// class Ads {
//   static BannerAd bannerAd;
//   static InterstitialAd myInterstitial;
//   static bool disposed = true;

//   static final Ads _ads = Ads._internal();
//   factory Ads() {
//     return _ads;
//   }

//   Ads._internal();

//   static void initialize() {
//     if (Save.testingads) {
//       print("testing");
//       FirebaseAdMob.instance.initialize(appId: testDevice);
//     } else {
//       FirebaseAdMob.instance.initialize(appId: myappid);
//     }
//   }

//   static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//     testDevices: testDevice != null ? <String>[testDevice] : null,
//     keywords: <String>['game', 'truth or dare', 'challenge'],
//     // contentUrl: 'http://foo.com/bar.html',
//     childDirected: false,
//     // nonPersonalizedAds: true,
//   );

//   static lunchbannerads() {
//     if (Save().getonlyonce() == false) {
//       Save().setonlyonce(true);
//       showBannerAd();
//       createInter();
//     } else {
//       print("holla");
//     }
//   }

//   static BannerAd createBannerAd() {
//     if (Save.testingads) {
//       print("testing banner");

//       return BannerAd(
//         adUnitId: "ca-app-pub-3940256099942544/6300978111",
//         size: AdSize.smartBanner,
//         targetingInfo: targetingInfo,
//         listener: (MobileAdEvent event) {
//           if (event == MobileAdEvent.loaded) if (disposed)
//             bannerAd.dispose();
//           else
//             bannerAd.show(anchorOffset: 0.0, anchorType: AnchorType.bottom);
//         },
//       );
//     } else {
//       return BannerAd(
//         adUnitId: Platform.isAndroid ? bannerid : banneridios,
//         size: AdSize.smartBanner,
//         targetingInfo: targetingInfo,
//         listener: (MobileAdEvent event) {
//           if (event == MobileAdEvent.loaded) if (disposed)
//             bannerAd.dispose();
//           else
//             bannerAd.show(anchorOffset: 0.0, anchorType: AnchorType.bottom);
//         },
//       );
//     }
//   }

//   static void showBannerAd() async {
//     disposed = false;
//     if (bannerAd == null) bannerAd = createBannerAd();

//     bannerAd.load();
//   }

//   static void hideBannerAd() async {
//     Save().setonlyonce(false);
//     try {
//       await bannerAd?.dispose();
//       disposed = true;
//       bannerAd = null;
//     } catch (ex) {
//       print("banner dispose error");
//     }
//   }

//   static void createInter() async {
//     print("---------- create inter");
//     if (Save.testingads) {
//       print("testing inter");
//       myInterstitial = InterstitialAd(
//         adUnitId: "ca-app-pub-3940256099942544/1033173712",
//         targetingInfo: targetingInfo,
//         listener: (MobileAdEvent event) {
//           print("InterstitialAd event is $event");
//           if (event == MobileAdEvent.closed) {
//             createInter();
//           }
//         },
//       );
//     } else {
//       myInterstitial = InterstitialAd(
//         adUnitId: Platform.isAndroid ? interid : interidios,
//         targetingInfo: targetingInfo,
//         listener: (MobileAdEvent event) {
//           print("InterstitialAd event is $event");
//           if (event == MobileAdEvent.closed) {
//             createInter();
//           }
//         },
//       );
//     }
//   }

//   static void showinter() async {
//     print("---------- show inter");
//     await myInterstitial
//       ..load()
//       ..show(
//         // anchorType: AnchorType.bottom,
//         anchorOffset: 0.0,
//         horizontalCenterOffset: 0.0,
//       );
//   }
// }

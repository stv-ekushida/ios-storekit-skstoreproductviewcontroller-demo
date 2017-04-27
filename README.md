# SKStoreProductViewController

## 概要
SKStoreProductViewController、アプリからAppStoreを表示するときに利用します。
（シュミレーターでは期待通りに表示できませんでした。）

## 関連クラス
UIViewController

## 主要プロパティ
|プロパティ|説明|サンプル|
|---|---|---|
| delegate |  デリゲートを指定する。<br> SKStoreProductViewControllerDelegateの実装用 |  vc.delegate = self |

## 主要メソッド
|メソッド|説明|サンプル|
|---|---|---|
| loadProductWithParameters | AppStore画面を表示する | vc.loadProduct(withParameters: [SKStoreProductParameterITunesItemIdentifier: "App-ID"],completionBlock: { (result, error) in　}) |

## SKStoreProductViewControllerDelegate

|メソッド|説明|必須|
|---|---|---|
| productViewControllerDidFinish | AppStore画面を閉じたとき | - | 

## フレームワーク
StoreKit.framework

## サポートOSバージョン
iOS6.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.3 |
| iOS | 10.2〜 |

## 参考
https://developer.apple.com/reference/storekit/skstoreproductviewcontroller

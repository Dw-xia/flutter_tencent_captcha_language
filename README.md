# flutter_tencent_captcha插件的多语言版本


### 用法

#### 获取 SDK 版本

```dart
String sdkVersion = await TencentCaptcha.sdkVersion;
```

#### 初始化 SDK

```dart
TencentCaptcha.init('<appId>');
```
#### 语言代码
 TencentCaptchaConfig config = TencentCaptchaConfig(
      userLanguage: 'en',
      bizState: 'tencent-captcha',
      enableDarkMode: true,
    );
#### 开始验证

> 详细参数请参见：https://cloud.tencent.com/document/product/1110/36841

```dart
TencentCaptchaConfig config = TencentCaptchaConfig(
   userLanguage: 'en',
  bizState: 'tencent-captcha',
  enableDarkMode: true,
);
await TencentCaptcha.verify(
  config: config,
  onLoaded: (dynamic data) {
    _addLog('onLoaded', data);
  },
  onSuccess: (dynamic data) {
    _addLog('onSuccess', data);
  },
  onFail: (dynamic data) {
    _addLog('onFail', data);
  },
);
```
 

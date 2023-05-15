class TencentCaptchaConfig {
  String? appId;
  // 自定义透传参数，业务可用该字段传递少量数据，该字段的内容会被带入callback回调的对象中
  dynamic bizState;
  // 开启自适应深夜模式
  bool? enableDarkMode;
  // 示例 {"width": 140, "height": 140}
  // 移动端原生webview调用时传入，为设置的验证码弹框大小。
  Map<String, dynamic>? sdkOpts;
  // 语言代码参考https://cloud.tencent.com/document/product/1110/36841#userLanguage
  String? userLanguage;

  TencentCaptchaConfig({
    this.appId,
    this.bizState,
    this.enableDarkMode,
    this.sdkOpts,
    this.userLanguage,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> jsonObject = <String, dynamic>{};

    if (appId != null) jsonObject.putIfAbsent("appId", () => appId);
    if (userLanguage != null) {
      jsonObject.putIfAbsent("userLanguage", () => userLanguage);
    }
    if (bizState != null) jsonObject.putIfAbsent("bizState", () => bizState);
    if (enableDarkMode != null) {
      jsonObject.putIfAbsent("enableDarkMode", () => enableDarkMode);
    }
    if (sdkOpts != null) jsonObject.putIfAbsent("sdkOpts", () => sdkOpts);

    return jsonObject;
  }
}

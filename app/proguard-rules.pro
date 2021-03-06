# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/topjohnwu/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Don't obfuscate, we are open source anyway :)
-dontobfuscate

# BouncyCastle
-keep class org.bouncycastle.jcajce.provider.asymmetric.rsa.**SHA1** { *; }
-keep class org.bouncycastle.jcajce.provider.asymmetric.RSA** { *; }
-keep class org.bouncycastle.jcajce.provider.digest.SHA1** { *; }
-dontwarn javax.naming.**

# Gson
-keepattributes Signature

# Strip logging
-assumenosideeffects class com.topjohnwu.magisk.utils.Logger {
  public *** debug(...);
}

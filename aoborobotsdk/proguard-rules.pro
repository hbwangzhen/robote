# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.

# 保持SDK类
-keep class com.aoborobot.sdk.** { *; }
-dontwarn com.aoborobot.sdk.**
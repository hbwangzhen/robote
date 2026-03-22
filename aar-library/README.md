# aoborobotsdk Android AAR Library

This repository contains the aoborobotsdk-v2.0.aar library for Android projects.

## Usage in Android Project

### Method 1: Direct GitHub URL (Recommended)
Add to your `build.gradle` (Module level):

```gradle
repositories {
    maven { url 'https://raw.githubusercontent.com/hbwangzhen/robote/main/aar-library/libs/' }
}

dependencies {
    implementation 'com.aoborobot:aoborobotsdk:2.0@aar'
}
```

### Method 2: Download and use locally
1. Download the aar file from: `https://github.com/hbwangzhen/robote/raw/main/aar-library/libs/aoborobotsdk-v2.0.aar`
2. Place it in your project's `libs` directory
3. Add to `build.gradle`:

```gradle
dependencies {
    implementation files('libs/aoborobotsdk-v2.0.aar')
}
```

## Version Information
- Library Name: aoborobotsdk
- Version: 2.0
- File: aoborobotsdk-v2.0.aar
- Size: 14.6MB

## License
Please check the original library for licensing information.
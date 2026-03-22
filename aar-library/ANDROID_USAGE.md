# Android 项目使用指南

## 方式一：通过GitHub Raw URL直接引用（推荐）

在你的Android项目的 `build.gradle` (Module级别) 中添加：

```gradle
repositories {
    maven { 
        url 'https://raw.githubusercontent.com/hbwangzhen/robote/main/aar-library/libs/' 
    }
    // 或者使用镜像站（如果raw.githubusercontent.com访问有问题）
    maven { 
        url 'https://ghproxy.com/https://raw.githubusercontent.com/hbwangzhen/robote/main/aar-library/libs/' 
    }
}

dependencies {
    implementation 'com.aoborobot:aoborobotsdk:2.0@aar'
}
```

## 方式二：下载aar文件到本地libs目录

1. **下载aar文件**：
   ```bash
   # 使用curl下载
   curl -L -o app/libs/aoborobotsdk-v2.0.aar \
   https://raw.githubusercontent.com/hbwangzhen/robote/main/aar-library/libs/aoborobotsdk-v2.0.aar

   # 或者使用wget
   wget -O app/libs/aoborobotsdk-v2.0.aar \
   https://raw.githubusercontent.com/hbwangzhen/robote/main/aar-library/libs/aoborobotsdk-v2.0.aar
   ```

2. **在build.gradle中添加本地依赖**：
```gradle
dependencies {
    implementation files('libs/aoborobotsdk-v2.0.aar')
}
```

## 方式三：使用JitPack（如果需要版本管理）

1. 首先确保项目配置了JitPack仓库：
```gradle
allprojects {
    repositories {
        maven { url 'https://jitpack.io' }
    }
}
```

2. 然后添加依赖（需要先将aar发布到JitPack）

## 验证aar文件完整性

下载后可以验证文件的SHA256哈希值：
```bash
# 计算SHA256
shasum -a 256 aoborobotsdk-v2.0.aar

# 预期哈希值（请根据实际文件更新）
# 14,630,653 字节文件的哈希值
```

## 国内访问加速

如果 `raw.githubusercontent.com` 访问缓慢，可以使用以下镜像站：

```gradle
repositories {
    maven { 
        url 'https://ghproxy.com/https://raw.githubusercontent.com/hbwangzhen/robote/main/aar-library/libs/' 
    }
    // 或者其他镜像站
    maven { 
        url 'https://ghps.cc/https://raw.githubusercontent.com/hbwangzhen/robote/main/aar-library/libs/' 
    }
}
```

## 技术支持

如果在集成过程中遇到问题，请检查：
1. 网络连接是否正常
2. Gradle版本是否兼容
3. Android SDK版本要求
4. 必要的权限配置

## 版本信息
- **库名称**: aoborobotsdk
- **版本**: 2.0
- **文件大小**: 14.6 MB
- **GitHub地址**: https://github.com/hbwangzhen/robote
- **Raw URL**: https://raw.githubusercontent.com/hbwangzhen/robote/main/aar-library/libs/aoborobotsdk-v2.0.aar
---
title: "deviceManagementConfigurationPlatforms enum type"
description: "Supported platform types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationPlatforms enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported platform types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default. No platform type specified.|
|android|1|Settings for Android platform.|
|iOS|4|Settings for iOS platform.|
|macOS|8|Settings for MacOS platform.|
|windows10X|16|Windows 10 X.|
|windows10|32|Settings for Windows 10 platform.|
|linux|128|Settings for Linux platform.|
|unknownFutureValue|256|Evolvable enumeration sentinel value. Do not use.|
|androidEnterprise|512|Settings for Corporate Owned Android Enterprise devices.|
|aosp|1024|Settings for Android Open Source Project platform.|
|visionOS|2048|Settings for visionOS platform.|
|tvOS|4096|Settings for tvOS platform.|
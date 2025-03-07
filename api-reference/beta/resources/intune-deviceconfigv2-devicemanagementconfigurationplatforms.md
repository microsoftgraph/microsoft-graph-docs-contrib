---
title: "deviceManagementConfigurationPlatforms enum type"
description: "Supported platform types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 09/13/2024
---

# deviceManagementConfigurationPlatforms enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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

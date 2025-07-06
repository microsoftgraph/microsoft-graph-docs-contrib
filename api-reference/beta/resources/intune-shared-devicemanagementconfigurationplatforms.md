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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported platform types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|None.|
|android|1|Android.|
|iOS|4|iOS.|
|macOS|8|MacOS.|
|windows10X|16|Windows 10 X.|
|windows10|32|Windows 10.|
|linux|128|Linux.|
|unknownFutureValue|1073741824|Sentinel member for cases where the client cannot handle the new enum values.|

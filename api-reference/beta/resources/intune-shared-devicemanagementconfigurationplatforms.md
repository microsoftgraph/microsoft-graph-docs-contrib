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
|none|0|None.|
|android|1|Android.|
|iOS|4|iOS.|
|macOS|8|MacOS.|
|windows10X|16|Windows 10 X.|
|windows10|32|Windows 10.|
|linux|128|Linux.|
|unknownFutureValue|1073741824|Sentinel member for cases where the client cannot handle the new enum values.|
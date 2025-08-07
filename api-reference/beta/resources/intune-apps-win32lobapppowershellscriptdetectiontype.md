---
title: "win32LobAppPowerShellScriptDetectionType enum type"
description: "Contains all supported Powershell Script output detection type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# win32LobAppPowerShellScriptDetectionType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains all supported Powershell Script output detection type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured.|
|string|1|Output data type is string.|
|dateTime|2|Output data type is date time.|
|integer|3|Output data type is integer.|
|float|4|Output data type is float.|
|version|5|Output data type is version.|
|boolean|6|Output data type is boolean.|
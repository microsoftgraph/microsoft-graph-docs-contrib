---
title: "win32LobAppRegistryDetectionType enum type"
description: "Contains all supported registry data detection type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# win32LobAppRegistryDetectionType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains all supported registry data detection type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured.|
|exists|1|The specified registry key or value exists.|
|doesNotExist|2|The specified registry key or value does not exist.|
|string|3|String value type.|
|integer|4|Integer value type.|
|version|5|Version value type.|
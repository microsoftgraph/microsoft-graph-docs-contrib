---
title: "mdmSupportedState enum type"
description: "Mdm Support Status of the setting."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# mdmSupportedState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Mdm Support Status of the setting.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Mdm support status of the setting is not known.|
|supported|1|Setting is supported.|
|unsupported|2|Setting is unsupported.|
|deprecated|3|Setting is depcrecated.|
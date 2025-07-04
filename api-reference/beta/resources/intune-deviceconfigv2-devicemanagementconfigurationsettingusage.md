---
title: "deviceManagementConfigurationSettingUsage enum type"
description: "Supported setting types"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationSettingUsage enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported setting types

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default. No setting type specified.|
|configuration|1|Configuration setting type.|
|compliance|2|Compliance setting type.|
|unknownFutureValue|8|Evolvable enumeration sentinel value. Do not use.|
|inventory|16|Inventory Setting type.|
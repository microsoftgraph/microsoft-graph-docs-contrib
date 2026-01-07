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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
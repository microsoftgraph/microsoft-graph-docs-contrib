---
title: "deviceManagementConfigurationSettingVisibility enum type"
description: "Supported setting types"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationSettingVisibility enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported setting types

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default. Not visible.|
|settingsCatalog|1|Visible to setting catalog policy type.|
|template|2|Visible to template policy type.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|
|inventoryCatalog|8|Visible to inventory catalog policy type.|
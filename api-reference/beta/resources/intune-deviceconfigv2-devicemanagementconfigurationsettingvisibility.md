---
title: "deviceManagementConfigurationSettingVisibility enum type"
description: "Supported setting types"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# deviceManagementConfigurationSettingVisibility enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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

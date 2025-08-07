---
title: "groupPolicyOperationType enum type"
description: "Type of Group Policy operation."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# groupPolicyOperationType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of Group Policy operation.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Group Policy invalid operation type.|
|upload|1|Group Policy upload operation type.|
|uploadNewVersion|2|Group Policy upload new version operation type.|
|addLanguageFiles|3|Group Policy add new language(ADML) files operation type.|
|removeLanguageFiles|4|Group Policy remove language(ADML) files operation type.|
|updateLanguageFiles|5|Group Policy update language(ADML) files operation type.|
|remove|6|Group Policy remove uploaded file operation type.|
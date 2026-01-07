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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
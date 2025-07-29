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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Mdm Support Status of the setting.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Mdm support status of the setting is not known.|
|supported|1|Setting is supported.|
|unsupported|2|Setting is unsupported.|
|deprecated|3|Setting is depcrecated.|
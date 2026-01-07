---
title: "safeSearchFilterType enum type"
description: "Specifies what level of safe search (filtering adult content) is required"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# safeSearchFilterType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies what level of safe search (filtering adult content) is required

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User Defined, default value, no intent.|
|strict|1|Strict, highest filtering against adult content.|
|moderate|2|Moderate filtering against adult content (valid search results will not be filtered).|
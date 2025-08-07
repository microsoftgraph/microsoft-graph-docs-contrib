---
title: "scopeTagTargetType enum type"
description: "Specifies which type of Entra object to target in the Group for a given ScopeTag."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# scopeTagTargetType enum type

Namespace: microsoft.graph
> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Specifies which type of Entra object to target in the Group for a given ScopeTag.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Unused value. Do not use.|
|user|1|Indicates the ScopeTag assignment will Target Users in the Group Ids provided.|
|device|2|Indicates the ScopeTag assignment will Target Devices in the Group Ids provided.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

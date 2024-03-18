---
title: "scopeTagTargetType enum type"
description: "Specifies which type of Entra object to target in the Group for a given ScopeTag."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# scopeTagTargetType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies which type of Entra object to target in the Group for a given ScopeTag.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Unused value. Do not use.|
|user|1|Indicates the ScopeTag assignment will Target Users in the Group Ids provided.|
|device|2|Indicates the ScopeTag assignment will Target Devices in the Group Ids provided.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

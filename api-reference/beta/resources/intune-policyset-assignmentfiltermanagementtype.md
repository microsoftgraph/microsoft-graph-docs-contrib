---
title: "assignmentFilterManagementType enum type"
description: "Supported filter management types whether its devices or apps."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# assignmentFilterManagementType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported filter management types whether its devices or apps.

## Members
|Member|Value|Description|
|:---|:---|:---|
|devices|0|Indicates when filter is supported based on device properties. This is the default value when management type resolution fails.|
|apps|1|Indicates when filter is supported based on app properties.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|

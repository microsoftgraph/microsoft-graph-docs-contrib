---
title: "assignmentFilterManagementType enum type"
description: "Supported filter management types whether its devices or apps."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# assignmentFilterManagementType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported filter management types whether its devices or apps.

## Members
|Member|Value|Description|
|:---|:---|:---|
|devices|0|Indicates when filter is supported based on device properties. This is the default value when management type resolution fails.|
|apps|1|Indicates when filter is supported based on app properties.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|
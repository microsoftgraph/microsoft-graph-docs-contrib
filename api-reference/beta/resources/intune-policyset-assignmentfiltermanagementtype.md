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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported filter management types whether its devices or apps.

## Members
|Member|Value|Description|
|:---|:---|:---|
|devices|0|Indicates when filter is supported based on device properties. This is the default value when management type resolution fails.|
|apps|1|Indicates when filter is supported based on app properties.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|
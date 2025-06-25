---
title: "deviceAndAppManagementAssignmentFilterType enum type"
description: "Represents type of the assignment filter."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceAndAppManagementAssignmentFilterType enum type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Represents type of the assignment filter.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default value. Do not use.|
|include|1|Indicates in-filter, rule matching will offer the payload to devices.|
|exclude|2|Indicates out-filter, rule matching will not offer the payload to devices.|

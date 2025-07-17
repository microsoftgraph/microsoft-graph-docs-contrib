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
> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Represents type of the assignment filter.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default value. Do not use.|
|include|1|Indicates in-filter, rule matching will offer the payload to devices.|
|exclude|2|Indicates out-filter, rule matching will not offer the payload to devices.|

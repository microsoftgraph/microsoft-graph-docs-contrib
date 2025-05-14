---
title: "runState enum type"
description: "Indicates the type of execution status of the device management script."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# runState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of execution status of the device management script.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown result.|
|success|1|Script is run successfully.|
|fail|2|Script failed to run.|
|scriptError|3|Discovery script hits error.|
|pending|4|Script is pending to execute.|
|notApplicable|5|Script is not applicable for this device.|

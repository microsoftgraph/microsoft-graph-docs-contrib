---
title: "windowsQualityUpdateApprovalStatus enum type"
description: "Enum to describe policy's approval status for catalogitems "
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsQualityUpdateApprovalStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum to describe policy's approval status for catalogitems 

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|unknown status for corresponding catalog item|
|approved|1|approved for corresponding catalog item|
|suspended|2|suspended for corresponding catalog item|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use|
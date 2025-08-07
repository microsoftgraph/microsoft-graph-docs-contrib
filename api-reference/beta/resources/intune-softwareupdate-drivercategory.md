---
title: "driverCategory enum type"
description: "An enum type to represent which category a driver belongs to."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# driverCategory enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum type to represent which category a driver belongs to.

## Members
|Member|Value|Description|
|:---|:---|:---|
|recommended|0|This indicates a driver is recommended by Microsoft.|
|previouslyApproved|1|This indicates a driver was recommended by Microsoft and IT admin has taken some approval action on it.|
|other|2|This indicates a driver is never recommended by Microsoft.|
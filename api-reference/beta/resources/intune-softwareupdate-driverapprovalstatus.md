---
title: "driverApprovalStatus enum type"
description: "An enum type to represent approval status of a driver."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# driverApprovalStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum type to represent approval status of a driver.

## Members
|Member|Value|Description|
|:---|:---|:---|
|needsReview|0|This indicates a driver needs IT admin's review.|
|declined|1|This indicates IT admin has declined a driver.|
|approved|2|This indicates IT admin has approved a driver.|
|suspended|3|This indicates IT admin has suspended a driver.|
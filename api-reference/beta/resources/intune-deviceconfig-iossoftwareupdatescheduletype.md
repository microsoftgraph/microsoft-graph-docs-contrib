---
title: "iosSoftwareUpdateScheduleType enum type"
description: "Update schedule type for iOS software updates."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# iosSoftwareUpdateScheduleType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update schedule type for iOS software updates.

## Members
|Member|Value|Description|
|:---|:---|:---|
|updateOutsideOfActiveHours|0|Update outside of active hours.|
|alwaysUpdate|1|Always update.|
|updateDuringTimeWindows|2|Update during time windows.|
|updateOutsideOfTimeWindows|3|Update outside of time windows.|
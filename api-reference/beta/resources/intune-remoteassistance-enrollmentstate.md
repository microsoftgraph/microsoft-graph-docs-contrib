---
title: "enrollmentState enum type"
description: "This status denotes the current enrollent state of the device"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# enrollmentState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This status denotes the current enrollent state of the device

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Device enrollment state is unknown|
|enrolled|1|Device is Enrolled.|
|pendingReset|2|Enrolled but it's enrolled via enrollment profile and the enrolled profile is different from the assigned profile.|
|failed|3|Not enrolled and there is enrollment failure record.|
|notContacted|4|Device is imported but not enrolled.|
|blocked|5|Device is enrolled as userless, but is blocked from moving to user enrollment because the app failed to install.|
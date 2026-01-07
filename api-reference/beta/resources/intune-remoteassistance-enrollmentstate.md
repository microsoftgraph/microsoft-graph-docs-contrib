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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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

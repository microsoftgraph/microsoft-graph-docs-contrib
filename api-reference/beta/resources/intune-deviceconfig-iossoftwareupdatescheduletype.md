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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update schedule type for iOS software updates.

## Members
|Member|Value|Description|
|:---|:---|:---|
|updateOutsideOfActiveHours|0|Update outside of active hours.|
|alwaysUpdate|1|Always update.|
|updateDuringTimeWindows|2|Update during time windows.|
|updateOutsideOfTimeWindows|3|Update outside of time windows.|
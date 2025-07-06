---
title: "deviceAppManagementTaskStatus enum type"
description: "Device app management task status."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceAppManagementTaskStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device app management task status.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|State is undefined.|
|pending|1|The task is ready for review.|
|active|2|The task has been accepted and is being worked on.|
|completed|3|The work is complete.|
|rejected|4|The task was rejected.|
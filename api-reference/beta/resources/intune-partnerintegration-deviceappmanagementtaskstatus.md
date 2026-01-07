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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
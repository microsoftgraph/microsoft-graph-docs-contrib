---
title: "defenderRealtimeScanDirection enum type"
description: "Possible values for monitoring file activity."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# defenderRealtimeScanDirection enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for monitoring file activity.

## Members
|Member|Value|Description|
|:---|:---|:---|
|monitorAllFiles|0|0 (default) – Monitor all files(bi-directional)|
|monitorIncomingFilesOnly|1|Monitor incoming files only.|
|monitorOutgoingFilesOnly|2|Monitor outgoing files only.|
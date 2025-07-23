---
title: "defenderMonitorFileActivity enum type"
description: "Possible values for monitoring file activity."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# defenderMonitorFileActivity enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for monitoring file activity.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User Defined, default value, no intent.|
|disable|1|Disable monitoring file activity.|
|monitorAllFiles|2|Monitor all files.|
|monitorIncomingFilesOnly|3| Monitor incoming files only.|
|monitorOutgoingFilesOnly|4|Monitor outgoing files only.|
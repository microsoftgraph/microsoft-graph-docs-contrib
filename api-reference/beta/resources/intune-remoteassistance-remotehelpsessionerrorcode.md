---
title: "remoteHelpSessionErrorCode enum type"
description: "Enumeration indicating the error detail of a Windows Remote Help Unattended session"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# remoteHelpSessionErrorCode enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enumeration indicating the error detail of a Windows Remote Help Unattended session

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknownError|0|Indicates the error was generated for any other failure condition.|
|avdAgentNotFound|1|Indicates that AVD (Azure Virtual Desktop) agent is not installed on the device.|
|avdAgentInDifferentHostPool|2|Indicates that AVD (Azure Virtual Desktop) agent is connected to a different host pool.|
|rdpDisabled|3|Indicates that the RDP feature is disabled on the device.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|
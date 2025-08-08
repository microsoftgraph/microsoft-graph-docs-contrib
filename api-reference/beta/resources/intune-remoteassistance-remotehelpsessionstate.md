---
title: "remoteHelpSessionState enum type"
description: "Enumeration indicating the state of a Windows Remote Help Unattended session"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# remoteHelpSessionState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enumeration indicating the state of a Windows Remote Help Unattended session

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default value.|
|initiated|1|Indicates the initial state of a Remote Help session.|
|pendingAssignment|2|Indicates that the agent is restarted on the device and waiting for the session host assignment.|
|ready|3|Indicates that the session host assignment is completed and the web client URL is returned to the helper.|
|active|4|Indicates that the Remote Help session is ongoing.|
|disconnected|5|Indicates that the Remote Help session has ended.|
|failed|6|Indicates that the Remote Help session has failed.|
|unknownFutureValue|7|Evolvable enumeration sentinel value. Do not use.|
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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

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
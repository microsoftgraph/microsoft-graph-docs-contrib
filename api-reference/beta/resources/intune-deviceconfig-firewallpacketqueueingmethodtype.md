---
title: "firewallPacketQueueingMethodType enum type"
description: "Possible values for firewallPacketQueueingMethod"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# firewallPacketQueueingMethodType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for firewallPacketQueueingMethod

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|No value configured by Intune, do not override the user-configured device default value|
|disabled|1|Disable packet queuing|
|queueInbound|2|Queue inbound encrypted packets|
|queueOutbound|3|Queue decrypted outbound packets for forwarding|
|queueBoth|4|Queue both inbound and outbound packets|
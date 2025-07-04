---
title: "vpnTrafficDirection enum type"
description: "Specify whether the rule applies to inbound traffic or outbound traffic."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vpnTrafficDirection enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specify whether the rule applies to inbound traffic or outbound traffic.

## Members
|Member|Value|Description|
|:---|:---|:---|
|outbound|0|The rule applies to all outbound traffic.|
|inbound|1|The rule applies to all inbound traffic.|
|unknownFutureValue|2|Evolvable enum member|
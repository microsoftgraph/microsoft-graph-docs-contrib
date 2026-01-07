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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specify whether the rule applies to inbound traffic or outbound traffic.

## Members
|Member|Value|Description|
|:---|:---|:---|
|outbound|0|The rule applies to all outbound traffic.|
|inbound|1|The rule applies to all inbound traffic.|
|unknownFutureValue|2|Evolvable enum member|
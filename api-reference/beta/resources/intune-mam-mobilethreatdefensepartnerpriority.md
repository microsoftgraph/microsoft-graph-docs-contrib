---
title: "mobileThreatDefensePartnerPriority enum type"
description: "Determines the conflict resolution strategy, when more than one Mobile Threat Defense provider is enabled."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# mobileThreatDefensePartnerPriority enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Determines the conflict resolution strategy, when more than one Mobile Threat Defense provider is enabled.

## Members
|Member|Value|Description|
|:---|:---|:---|
|defenderOverThirdPartyPartner|0|Indicates use of Microsoft Defender Endpoint over 3rd party MTD connectors|
|thirdPartyPartnerOverDefender|1|Indicates use of a 3rd party MTD connector over Microsoft Defender Endpoint|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|

---
title: "mobileThreatDefensePartnerPriority enum type"
description: "Determines the conflict resolution strategy, when more than one Mobile Threat Defense provider is enabled."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# mobileThreatDefensePartnerPriority enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Determines the conflict resolution strategy, when more than one Mobile Threat Defense provider is enabled.

## Members
|Member|Value|Description|
|:---|:---|:---|
|defenderOverThirdPartyPartner|0|Indicates use of Microsoft Defender Endpoint over 3rd party MTD connectors|
|thirdPartyPartnerOverDefender|1|Indicates use of a 3rd party MTD connector over Microsoft Defender Endpoint|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|
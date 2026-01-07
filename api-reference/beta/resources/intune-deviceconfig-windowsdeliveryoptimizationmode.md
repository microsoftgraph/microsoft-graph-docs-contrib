---
title: "windowsDeliveryOptimizationMode enum type"
description: "Delivery optimization mode for peer distribution"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsDeliveryOptimizationMode enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Delivery optimization mode for peer distribution

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|Allow the user to set.|
|httpOnly|1|HTTP only, no peering|
|httpWithPeeringNat|2|OS default – Http blended with peering behind the same network address translator|
|httpWithPeeringPrivateGroup|3|HTTP blended with peering across a private group|
|httpWithInternetPeering|4|HTTP blended with Internet peering|
|simpleDownload|99|Simple download mode with no peering|
|bypassMode|100|Bypass mode. Do not use Delivery Optimization and use BITS instead|
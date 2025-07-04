---
title: "dmaGuardDeviceEnumerationPolicyType enum type"
description: "Possible values of the DmaGuardDeviceEnumerationPolicy."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# dmaGuardDeviceEnumerationPolicyType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of the DmaGuardDeviceEnumerationPolicy.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Default value. Devices with DMA remapping incompatible drivers will only be enumerated after the user unlocks the screen.|
|blockAll|1|Devices with DMA remapping incompatible drivers will never be allowed to start and perform DMA at any time.|
|allowAll|2|All external DMA capable PCIe devices will be enumerated at any time.|
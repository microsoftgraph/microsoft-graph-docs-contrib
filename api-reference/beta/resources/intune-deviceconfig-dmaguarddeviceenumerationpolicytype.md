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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of the DmaGuardDeviceEnumerationPolicy.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Default value. Devices with DMA remapping incompatible drivers will only be enumerated after the user unlocks the screen.|
|blockAll|1|Devices with DMA remapping incompatible drivers will never be allowed to start and perform DMA at any time.|
|allowAll|2|All external DMA capable PCIe devices will be enumerated at any time.|
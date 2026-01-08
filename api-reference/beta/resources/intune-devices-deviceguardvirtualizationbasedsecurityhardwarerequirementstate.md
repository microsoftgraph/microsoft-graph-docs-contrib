---
title: "deviceGuardVirtualizationBasedSecurityHardwareRequirementState enum type"
description: "Intune Devices Deviceguardvirtualizationbasedsecurityhardwarerequirementstate Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceGuardVirtualizationBasedSecurityHardwareRequirementState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Members
|Member|Value|Description|
|:---|:---|:---|
|meetHardwareRequirements|0|System meets hardware configuration requirements|
|secureBootRequired|1|Secure boot required|
|dmaProtectionRequired|2|DMA protection required|
|hyperVNotSupportedForGuestVM|4|HyperV not supported for Guest VM|
|hyperVNotAvailable|8|HyperV feature is not available|
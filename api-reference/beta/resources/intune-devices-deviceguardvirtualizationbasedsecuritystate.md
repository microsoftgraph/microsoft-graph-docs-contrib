---
title: "deviceGuardVirtualizationBasedSecurityState enum type"
description: "Intune Devices Deviceguardvirtualizationbasedsecuritystate Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceGuardVirtualizationBasedSecurityState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Members
|Member|Value|Description|
|:---|:---|:---|
|running|0|Running|
|rebootRequired|1|Root required|
|require64BitArchitecture|2|64 bit architecture required|
|notLicensed|3|Not licensed|
|notConfigured|4|Not configured|
|doesNotMeetHardwareRequirements|5|System does not meet hardware requirements|
|other|42|Other. Event logs in microsoft-Windows-DeviceGuard have more details.|
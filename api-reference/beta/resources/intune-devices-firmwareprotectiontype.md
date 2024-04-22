---
title: "firmwareProtectionType enum type"
description: "A list of possible Firmware protection type for a device. Firmware protection is a set of features that helps to ensure attackers can't get your device to start with untrusted or malicious firmware. Firmware protection type is determined by report sent from Microsoft Azure Attestation service. Only Windows 11 devices will have values "systemGuardSecureLaunch" or "firmwareAttackSurfaceReduction" or "disabled". Windows 10 devices will have value "notApplicable"."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# firmwareProtectionType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible Firmware protection type for a device. Firmware protection is a set of features that helps to ensure attackers can't get your device to start with untrusted or malicious firmware. Firmware protection type is determined by report sent from Microsoft Azure Attestation service. Only Windows 11 devices will have values "systemGuardSecureLaunch" or "firmwareAttackSurfaceReduction" or "disabled". Windows 10 devices will have value "notApplicable".

## Members
|Member|Value|Description|
|:---|:---|:---|
|notApplicable|0|Indicates that the device is not a Windows 11 device.|
|systemGuardSecureLaunch|1|Indicates that System Guard Secure Launch is enabled for Firmware protection.|
|firmwareAttackSurfaceReduction|2|Indicates that Firmware Attack Surface Reduction is enabled for Firmware protection. This is only applicable to Surface devices.|
|disabled|3|Indicates that the device has Firmware protection disabled.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|
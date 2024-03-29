---
title: "systemManagementModeLevel enum type"
description: "A list of possible System Management Mode levels for a device. System Management Mode levels is determined by report sent from Microsoft Azure Attestation service. Only specific hardwares support System Management Mode. Windows 11 devices will have values "notApplicable", "level1", "level2" or "level3". Windows 10 devices will have value "notApplicable"."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# systemManagementModeLevel enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible System Management Mode levels for a device. System Management Mode levels is determined by report sent from Microsoft Azure Attestation service. Only specific hardwares support System Management Mode. Windows 11 devices will have values "notApplicable", "level1", "level2" or "level3". Windows 10 devices will have value "notApplicable".

## Members
|Member|Value|Description|
|:---|:---|:---|
|notApplicable|0|Indicates that the device does not have Firmware protection (System Management Mode) enabled.|
|level1|1|Indicates that deny System Management Mode (SMM) read/write access to OS and Virtualization-based security (VBS) memory. The benefit is that by design System Management Mode (SMM) cannot modify security of or exfiltrate secrets from the OS (including Virtualization-based security).|
|level2|2|Indicates that in addition to the System Management Mode (SMM) Level 1 protections, this level prevents System Management Mode (SMM) from tampering with Input-Output Memory Management Unit (IOMMU) config. The benefit is that by design System Management Mode (SMM) cannot disable Virtualization-based security (VBS) and kernel Direct memory access (DMA) protections.|
|level3|3|Indicates that in addition to the System Management Mode (SMM) Level 2 protections, this level reduces System Management Mode (SMM) save state capabilities. The benefit is that by design System Management Mode (SMM) cannot exploit save state to modify security of or exfiltrate secrets from the OS (including Virtualization-based security).|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

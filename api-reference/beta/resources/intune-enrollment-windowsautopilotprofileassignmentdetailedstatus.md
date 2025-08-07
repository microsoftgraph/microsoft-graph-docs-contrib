---
title: "windowsAutopilotProfileAssignmentDetailedStatus enum type"
description: "Intune Enrollment Windowsautopilotprofileassignmentdetailedstatus Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsAutopilotProfileAssignmentDetailedStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No assignment detailed status|
|hardwareRequirementsNotMet|1|Hardware requirements are not met. This can happen if a self-deploying AutoPilot Profile is assigned to a device without TPM 2.0.|
|surfaceHubProfileNotSupported|2|Indicates that a Surface Hub AutoPilot Profile is assigned to a device that is not Surface Hub(Aruba).|
|holoLensProfileNotSupported|3|Indicates that a HoloLens AutoPilot Profile is assigned to a device that is not HoloLens.|
|windowsPcProfileNotSupported|4|Indicates that a Windows PC AutoPilot Profile is assigned to a device that is not Windows PC.|
|surfaceHub2SProfileNotSupported|5|Indicates that a surface Hub 2S  AutoPilot Profile is assigned to a device that is not surface Hub 2S.|
|unknownFutureValue|99|Placeholder for evolvable enum, but this enum is never returned to the caller, so it shouldn't be necessary.|
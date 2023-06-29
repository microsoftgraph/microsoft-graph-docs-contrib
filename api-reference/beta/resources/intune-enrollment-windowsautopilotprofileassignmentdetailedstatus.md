---
title: "windowsAutopilotProfileAssignmentDetailedStatus enum type"
description: "Not yet documented"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# windowsAutopilotProfileAssignmentDetailedStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

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

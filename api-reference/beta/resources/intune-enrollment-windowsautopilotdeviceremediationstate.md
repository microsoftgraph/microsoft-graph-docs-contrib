---
title: "windowsAutopilotDeviceRemediationState enum type"
description: "Device remediation status, indicating whether or not hardware has been changed for an Autopilot-registered device."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# windowsAutopilotDeviceRemediationState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device remediation status, indicating whether or not hardware has been changed for an Autopilot-registered device.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown status.|
|noRemediationRequired|1|No hardware change has been detected.|
|automaticRemediationRequired|2|Hardware change detected on client. Additional remediation is required.|
|manualRemediationRequired|3|Hardware change detected on client that could not resolved automatically. Additional remediation is required.|
|unknownFutureValue|4|Marks the end of known enum values, and allows for additional values in the future.|

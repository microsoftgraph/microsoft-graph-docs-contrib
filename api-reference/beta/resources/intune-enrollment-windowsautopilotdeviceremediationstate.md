---
title: "windowsAutopilotDeviceRemediationState enum type"
description: "Device remediation status, indicating whether or not hardware has been changed for an Autopilot-registered device."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsAutopilotDeviceRemediationState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
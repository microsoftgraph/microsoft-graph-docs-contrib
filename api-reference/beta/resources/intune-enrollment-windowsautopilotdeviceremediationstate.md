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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

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
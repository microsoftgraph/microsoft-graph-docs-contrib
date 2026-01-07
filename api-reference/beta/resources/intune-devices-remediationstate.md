---
title: "remediationState enum type"
description: "Indicates the type of execution status of the device management script."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# remediationState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of execution status of the device management script.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown result.|
|skipped|1|Remediation script execution was skipped|
|success|2|Remediation script executed successfully and remediated the device state|
|remediationFailed|3|Remediation script executed successfully but failed to remediated the device state|
|scriptError|4|Remediation script execution encountered and error or timed out|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|
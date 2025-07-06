---
title: "deviceRegistrationState enum type"
description: "Device registration status."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceRegistrationState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device registration status.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notRegistered|0|The device is not registered.|
|registered|2|The device is registered.|
|revoked|3|The device has been blocked, wiped or retired.|
|keyConflict|4|The device has a key conflict.|
|approvalPending|5|The device is pending approval.|
|certificateReset|6|The device certificate has been reset.|
|notRegisteredPendingEnrollment|7|The device is not registered and pending enrollment.|
|unknown|8|The device registration status is unknown.|
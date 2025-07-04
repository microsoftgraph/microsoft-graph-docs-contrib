---
title: "androidDeviceOwnerAppAutoUpdatePolicyType enum type"
description: "Android Device Owner possible values for states of the device's app auto update policy."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerAppAutoUpdatePolicyType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android Device Owner possible values for states of the device's app auto update policy.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured; this value is ignored.|
|userChoice|1|The user can control auto-updates.|
|never|2|Apps are never auto-updated.|
|wiFiOnly|3|Apps are auto-updated over Wi-Fi only.|
|always|4|Apps are auto-updated at any time. Data charges may apply.|
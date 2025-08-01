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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
---
title: "androidKeyguardFeature enum type"
description: "Android keyguard feature."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidKeyguardFeature enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android keyguard feature.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured; this value is ignored.|
|camera|1|Camera usage when on secure keyguard screens.|
|notifications|2|Showing notifications when on secure keyguard screens.|
|unredactedNotifications|3|Showing unredacted notifications when on secure keyguard screens.|
|trustAgents|4|Trust agent state when on secure keyguard screens.|
|fingerprint|5|Fingerprint sensor usage when on secure keyguard screens.|
|remoteInput|6|Notification text entry when on secure keyguard screens.|
|allFeatures|7|All keyguard features when on secure keyguard screens.|
|face|8|Face authentication on secure keyguard screens.|
|iris|9|Iris authentication on secure keyguard screens.|
|biometrics|10|All biometric authentication on secure keyguard screens.|
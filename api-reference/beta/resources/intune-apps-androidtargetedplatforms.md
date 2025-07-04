---
title: "androidTargetedPlatforms enum type"
description: "Specifies which platform(s) can be targeted for a given Android LOB application or Managed Android LOB application."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidTargetedPlatforms enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies which platform(s) can be targeted for a given Android LOB application or Managed Android LOB application.

## Members
|Member|Value|Description|
|:---|:---|:---|
|androidDeviceAdministrator|1|Indicates the Android targeted platform is Android Device Administrator.|
|androidOpenSourceProject|2|Indicates the Android targeted platform is Android Open Source Project.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|
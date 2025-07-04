---
title: "androidDeviceOwnerSystemUpdateInstallType enum type"
description: "System Update Types for Android Device Owner."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerSystemUpdateInstallType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

System Update Types for Android Device Owner.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Device default behavior, which typically prompts the user to accept system updates.|
|postpone|1|Postpone automatic install of updates up to 30 days.|
|windowed|2|Install automatically inside a daily maintenance window.|
|automatic|3|Automatically install updates as soon as possible.|
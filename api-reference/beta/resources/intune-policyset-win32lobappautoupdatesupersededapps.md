---
title: "win32LobAppAutoUpdateSupersededApps enum type"
description: "Contains value for auto-update superseded apps."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 09/12/2024
---

# win32LobAppAutoUpdateSupersededApps enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains value for auto-update superseded apps.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Indicates that the auto-update superseded apps is not configured and the app will not auto-update the superseded apps.|
|enabled|1|Indicates that the auto-update superseded apps is enabled and the app will auto-update the superseded apps if the superseded apps are installed on the device.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|

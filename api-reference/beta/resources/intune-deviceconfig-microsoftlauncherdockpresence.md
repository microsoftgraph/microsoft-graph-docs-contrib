---
title: "microsoftLauncherDockPresence enum type"
description: "Microsoft Launcher Dock Presence selection."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# microsoftLauncherDockPresence enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Microsoft Launcher Dock Presence selection.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured; this value is ignored.|
|show|1|Indicates the device's dock will be displayed on the device.|
|hide|2|Indicates the device's dock will be hidden on the device, but the user can access the dock by dragging the handler on the bottom of the screen.|
|disabled|3|Indicates the device's dock will be disabled on the device.|
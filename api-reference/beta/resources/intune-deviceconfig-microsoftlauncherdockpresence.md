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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Microsoft Launcher Dock Presence selection.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured; this value is ignored.|
|show|1|Indicates the device's dock will be displayed on the device.|
|hide|2|Indicates the device's dock will be hidden on the device, but the user can access the dock by dragging the handler on the bottom of the screen.|
|disabled|3|Indicates the device's dock will be disabled on the device.|
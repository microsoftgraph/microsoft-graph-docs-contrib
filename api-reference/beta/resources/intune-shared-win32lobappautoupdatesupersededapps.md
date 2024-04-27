---
title: "win32LobAppAutoUpdateSupersededApps enum type"
description: "Contains value for auto-update superseded apps."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# win32LobAppAutoUpdateSupersededApps enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains value for auto-update superseded apps.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Indicates that the auto-update superseded apps is not configured and the app will not auto-update the superseded apps.|
|enabled|1|Indicates that the auto-update superseded apps is enabled and the app will auto-update the superseded apps if the superseded apps are installed on the device.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|
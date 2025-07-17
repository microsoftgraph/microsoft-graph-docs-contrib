---
title: "win32LobAutoUpdateSupersededAppsState enum type"
description: "Contains value for auto-update superseded apps."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 09/13/2024
---

# win32LobAutoUpdateSupersededAppsState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains value for auto-update superseded apps.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Indicates that the auto-update superseded apps state is not configured and the app will not auto-update the superseded apps.|
|enabled|1|Indicates that the auto-update superseded apps state is enabled and the app will auto-update the superseded apps if the superseded apps are installed on the device.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|

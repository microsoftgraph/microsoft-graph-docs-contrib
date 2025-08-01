---
title: "windowsUpdateNotificationDisplayOption enum type"
description: "Windows Update Notification Display Options"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsUpdateNotificationDisplayOption enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows Update Notification Display Options

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured|
|defaultNotifications|1|Use the default Windows Update notifications.|
|restartWarningsOnly|2|Turn off all notifications, excluding restart warnings.|
|disableAllNotifications|3|Turn off all notifications, including restart warnings.|
|unknownFutureValue|4|Evolvable enum member|
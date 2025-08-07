---
title: "managedAppClipboardSharingLevel enum type"
description: "Represents the level to which the device's clipboard may be shared between apps"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppClipboardSharingLevel enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the level to which the device's clipboard may be shared between apps

## Members
|Member|Value|Description|
|:---|:---|:---|
|allApps|0|Sharing is allowed between all apps, managed or not|
|managedAppsWithPasteIn|1|Sharing is allowed between all managed apps with paste in enabled|
|managedApps|2|Sharing is allowed between all managed apps|
|blocked|3|Sharing between apps is disabled|
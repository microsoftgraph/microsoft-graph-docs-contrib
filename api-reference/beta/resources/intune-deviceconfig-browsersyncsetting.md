---
title: "browserSyncSetting enum type"
description: "Allow(Not Configured) or prevent(Block) the syncing of Microsoft Edge Browser settings. Option to prevent syncing across devices, but allow user override."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# browserSyncSetting enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Allow(Not Configured) or prevent(Block) the syncing of Microsoft Edge Browser settings. Option to prevent syncing across devices, but allow user override.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Default – Allow syncing of browser settings across devices.|
|blockedWithUserOverride|1|Prevent syncing of browser settings across user devices, allow user override of setting.|
|blocked|2|Absolutely prevent syncing of browser settings across user devices.|
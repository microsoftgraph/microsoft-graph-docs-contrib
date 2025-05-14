---
title: "wiredNetworkAuthenticationType enum type"
description: "Wired Network Authentication Type Settings."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# wiredNetworkAuthenticationType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Wired Network Authentication Type Settings.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|None|
|user|1|User Authentication|
|machine|2|Machine Authentication|
|machineOrUser|3|Machine or User Authentication|
|guest|4|Guest Authentication|
|unknownFutureValue|5|Sentinel member for cases where the client cannot handle the new enum values.|
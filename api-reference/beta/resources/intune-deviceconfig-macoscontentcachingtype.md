---
title: "macOSContentCachingType enum type"
description: "Indicates the type of content allowed to be cached by Apple's content caching service."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# macOSContentCachingType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of content allowed to be cached by Apple's content caching service.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Default. Both user iCloud data and non-iCloud data will be cached.|
|userContentOnly|1|Allow Apple's content caching service to cache user iCloud data.|
|sharedContentOnly|2|Allow Apple's content caching service to cache non-iCloud data (e.g. app and software updates).|
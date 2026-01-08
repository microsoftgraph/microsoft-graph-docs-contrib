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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of content allowed to be cached by Apple's content caching service.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Default. Both user iCloud data and non-iCloud data will be cached.|
|userContentOnly|1|Allow Apple's content caching service to cache user iCloud data.|
|sharedContentOnly|2|Allow Apple's content caching service to cache non-iCloud data (e.g. app and software updates).|
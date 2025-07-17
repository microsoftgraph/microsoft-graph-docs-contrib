---
title: "macOSContentCachingClientPolicy enum type"
description: "Determines which clients a content cache will serve."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# macOSContentCachingClientPolicy enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Determines which clients a content cache will serve.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Defaults to clients in local network.|
|clientsInLocalNetwork|1|Content caches will provide content to devices only in their immediate local network.|
|clientsWithSamePublicIpAddress|2|Content caches will provide content to devices that share the same public IP address.|
|clientsInCustomLocalNetworks|3|Content caches will provide content to devices in contentCachingClientListenRanges.|
|clientsInCustomLocalNetworksWithFallback|4|Content caches will provide content to devices in contentCachingClientListenRanges, contentCachingPeerListenRanges, and contentCachingParents.|
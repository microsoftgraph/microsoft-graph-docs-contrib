---
title: "macOSContentCachingPeerPolicy enum type"
description: "Determines which content caches other content caches will peer with."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# macOSContentCachingPeerPolicy enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Determines which content caches other content caches will peer with.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Defaults to peers in local network.|
|peersInLocalNetwork|1|Content caches will only peer with caches in their immediate local network.|
|peersWithSamePublicIpAddress|2|Content caches will only peer with caches that share the same public IP address.|
|peersInCustomLocalNetworks|3|Content caches will use contentCachingPeerFilterRanges and contentCachingPeerListenRanges to determine which caches to peer with.|
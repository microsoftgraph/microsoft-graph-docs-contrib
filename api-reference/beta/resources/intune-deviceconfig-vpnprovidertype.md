---
title: "vpnProviderType enum type"
description: "Provider type for per-app VPN."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vpnProviderType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Provider type for per-app VPN.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Tunnel traffic is not explicitly configured.|
|appProxy|1|Tunnel traffic at the application layer.|
|packetTunnel|2|Tunnel traffic at the IP layer.|
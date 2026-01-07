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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Provider type for per-app VPN.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Tunnel traffic is not explicitly configured.|
|appProxy|1|Tunnel traffic at the application layer.|
|packetTunnel|2|Tunnel traffic at the IP layer.|
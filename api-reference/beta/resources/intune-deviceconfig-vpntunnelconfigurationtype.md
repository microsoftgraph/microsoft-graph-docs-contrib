---
title: "vpnTunnelConfigurationType enum type"
description: "The type of tunnels that will be present to the VPN client for configuration"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vpnTunnelConfigurationType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The type of tunnels that will be present to the VPN client for configuration

## Members
|Member|Value|Description|
|:---|:---|:---|
|wifiAndCellular|0|WiFi and Cellular Tunnels|
|cellular|1|Cellular Tunnel Only|
|wifi|2|WiFi Tunnel Only|
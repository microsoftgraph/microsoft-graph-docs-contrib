---
title: "windows10VpnConnectionType enum type"
description: "VPN connection types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windows10VpnConnectionType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

VPN connection types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|pulseSecure|0|Pulse Secure.|
|f5EdgeClient|1|F5 Edge Client.|
|dellSonicWallMobileConnect|2|Dell SonicWALL Mobile Connection.|
|checkPointCapsuleVpn|3|Check Point Capsule VPN.|
|automatic|4|Automatic.|
|ikEv2|5|IKEv2.|
|l2tp|6|L2TP.|
|pptp|7|PPTP.|
|citrix|8|Citrix.|
|paloAltoGlobalProtect|9|Palo Alto Networks GlobalProtect.|
|ciscoAnyConnect|10|Cisco AnyConnect|
|unknownFutureValue|11|Sentinel member for cases where the client cannot handle the new enum values.|
|microsoftTunnel|12|Microsoft Tunnel connection type|
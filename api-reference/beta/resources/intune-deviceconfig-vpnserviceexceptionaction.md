---
title: "vpnServiceExceptionAction enum type"
description: "The VPN action to take for a specific service."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vpnServiceExceptionAction enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The VPN action to take for a specific service.

## Members
|Member|Value|Description|
|:---|:---|:---|
|forceTrafficViaVPN|0|Make all traffic from that service go through the VPN|
|allowTrafficOutside|1|Allow the service outside of the VPN|
|dropTraffic|2|Drop all traffic from the service|
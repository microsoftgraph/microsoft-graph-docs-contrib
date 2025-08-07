---
title: "iosWiredNetworkEapType enum type"
description: "Extensible Authentication Protocol (EAP) configuration types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# iosWiredNetworkEapType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Extensible Authentication Protocol (EAP) configuration types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|eapTls|0|EAP-Transport Layer Security (EAP-TLS).|
|eapTtls|1|EAP-Tunneled Transport Layer Security (EAP-TTLS).|
|peap|2|Protected Extensible Authentication Protocol (PEAP).|
|eapFast|3|EAP-Flexible Authentication via Secure Tunneling (EAP-FAST).|
|eapAka|4|EAP-Authentication and Key Agreement (EAP-AKA).|
|unknownFutureValue|5|Sentinel member for cases where the client cannot handle the new enum values.|
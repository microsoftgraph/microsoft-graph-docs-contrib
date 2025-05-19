---
title: "endpointSecurityConfigurationType enum type"
description: "The endpoint security policy type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# endpointSecurityConfigurationType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The endpoint security policy type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown.|
|antivirus|1|Antivirus.|
|diskEncryption|2|Disk encryption.|
|firewall|3|Firewall.|
|endpointDetectionAndResponse|4|Endpoint detection and response.|
|attackSurfaceReduction|5|Attack surface reduction.|
|accountProtection|6|Account protection.|
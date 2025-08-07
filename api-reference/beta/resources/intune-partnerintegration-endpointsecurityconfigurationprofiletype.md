---
title: "endpointSecurityConfigurationProfileType enum type"
description: "The endpoint security policy profile type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# endpointSecurityConfigurationProfileType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The endpoint security policy profile type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown.|
|antivirus|1|Antivirus.|
|windowsSecurity|2|Windows Security.|
|bitLocker|3|BitLocker.|
|fileVault|4|FileVault.|
|firewall|5|Firewall.|
|firewallRules|6|Firewall rules.|
|endpointDetectionAndResponse|7|Endpoint detection and response.|
|deviceControl|8|Device control.|
|appAndBrowserIsolation|9|App and browser isolation.|
|exploitProtection|10|Exploit protection.|
|webProtection|11|Web protection.|
|applicationControl|12|Application control.|
|attackSurfaceReductionRules|13|Attack surface reduction rules.|
|accountProtection|14|Account protection.|
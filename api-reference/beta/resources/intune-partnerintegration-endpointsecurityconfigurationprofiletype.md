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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
---
title: "deviceManagementTemplateSubtype enum type"
description: "Template subtype"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementTemplateSubtype enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Template subtype

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Template has no subtype|
|firewall|1|Endpoint security firewall subtype|
|diskEncryption|2|Endpoint security disk encryption subtype|
|attackSurfaceReduction|3|Endpoint security attack surface reduction subtype|
|endpointDetectionReponse|4|Endpoint security endpoint detection and response subtype|
|accountProtection|5|Endpoint security account protection subtype|
|antivirus|6|Endpoint security anitivirus subtype|
|firewallSharedAppList|7|Endpoint security firewall shared app subtype|
|firewallSharedIpList|8|Endpoint security firewall shared ip range list subtype|
|firewallSharedPortlist|9|Endpoint security firewall shared port range list subtype|
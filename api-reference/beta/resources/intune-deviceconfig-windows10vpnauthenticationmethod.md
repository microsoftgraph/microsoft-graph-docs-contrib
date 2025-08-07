---
title: "windows10VpnAuthenticationMethod enum type"
description: "Windows 10 VPN connection types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windows10VpnAuthenticationMethod enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows 10 VPN connection types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|certificate|0|Authenticate with a certificate.|
|usernameAndPassword|1|Use username and password for authentication.|
|customEapXml|2|Authentication method is specified in custom EAP XML.|
|derivedCredential|3|Use Derived Credential for authentication.|
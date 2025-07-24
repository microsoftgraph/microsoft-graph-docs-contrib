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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows 10 VPN connection types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|certificate|0|Authenticate with a certificate.|
|usernameAndPassword|1|Use username and password for authentication.|
|customEapXml|2|Authentication method is specified in custom EAP XML.|
|derivedCredential|3|Use Derived Credential for authentication.|
---
title: "vpnAuthenticationMethod enum type"
description: "VPN Authentication Method."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vpnAuthenticationMethod enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

VPN Authentication Method.

## Members
|Member|Value|Description|
|:---|:---|:---|
|certificate|0|Authenticate with a certificate.|
|usernameAndPassword|1|Use username and password for authentication.|
|sharedSecret|2|Use Shared Secret for Authentication.  Only valid for iOS IKEv2.|
|derivedCredential|3|Use Derived Credential for Authentication.|
|azureAD|4|Use Azure AD for authentication.|
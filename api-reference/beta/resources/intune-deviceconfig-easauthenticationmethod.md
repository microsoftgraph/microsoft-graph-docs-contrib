---
title: "easAuthenticationMethod enum type"
description: "Exchange Active Sync authentication method."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# easAuthenticationMethod enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Exchange Active Sync authentication method.

## Members
|Member|Value|Description|
|:---|:---|:---|
|usernameAndPassword|0|Authenticate with a username and password.|
|certificate|1|Authenticate with a certificate.|
|derivedCredential|2|Authenticate with derived credential.|
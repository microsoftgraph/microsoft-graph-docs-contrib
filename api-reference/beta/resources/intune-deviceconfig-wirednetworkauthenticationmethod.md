---
title: "wiredNetworkAuthenticationMethod enum type"
description: "Wired Network authentication method."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# wiredNetworkAuthenticationMethod enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Wired Network authentication method.

## Members
|Member|Value|Description|
|:---|:---|:---|
|certificate|0|Use an identity certificate for authentication.|
|usernameAndPassword|1|Use username and password for authentication.|
|derivedCredential|2|Use Derived Credential for authentication.|
|unknownFutureValue|3|Sentinel member for cases where the client cannot handle the new enum values.|

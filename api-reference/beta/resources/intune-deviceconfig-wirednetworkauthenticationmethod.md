---
title: "wiredNetworkAuthenticationMethod enum type"
description: "Wired Network authentication method."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# wiredNetworkAuthenticationMethod enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Wired Network authentication method.

## Members
|Member|Value|Description|
|:---|:---|:---|
|certificate|0|Use an identity certificate for authentication.|
|usernameAndPassword|1|Use username and password for authentication.|
|derivedCredential|2|Use Derived Credential for authentication.|
|unknownFutureValue|3|Sentinel member for cases where the client cannot handle the new enum values.|
---
title: "nonEapAuthenticationMethodForEapTtlsType enum type"
description: "Non-EAP methods for authentication."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# nonEapAuthenticationMethodForEapTtlsType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Non-EAP methods for authentication.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unencryptedPassword|0|Unencrypted password (PAP).|
|challengeHandshakeAuthenticationProtocol|1|Challenge Handshake Authentication Protocol (CHAP).|
|microsoftChap|2| Microsoft CHAP (MS-CHAP).|
|microsoftChapVersionTwo|3|Microsoft CHAP Version 2 (MS-CHAP v2).|
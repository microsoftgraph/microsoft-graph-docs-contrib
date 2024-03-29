---
title: "cloudCertificationAuthorityCertificateKeySize enum type"
description: "Enum of possible cloud certification authority certificate cryptography and key size combinations."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# cloudCertificationAuthorityCertificateKeySize enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum of possible cloud certification authority certificate cryptography and key size combinations.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Unknown or invalid value.|
|rsa2048|1|A certificate generated using RSA cryptography and a key size of 2048 bits.|
|rsa3072|2|A certificate generated using RSA cryptography and a key size of 3072 bits.|
|rsa4096|3|A certificate generated using RSA cryptography and a key size of 4096 bits.|
|eCP256|4|A certificate generated using Elliptic Curve cryptography and a key size of 256 bits.|
|eCP256k|5|A certificate generated using Elliptic Curve cryptography and a key size of 256 bits with a Koblitz curve.|
|eCP384|6|A certificate generated using Elliptic Curve cryptography and a key size of 384 bits.|
|eCP521|7|A certificate generated using Elliptic Curve cryptography and a key size of 521 bits.|
|unknownFutureValue|8|Evolvable enumeration sentinel value. Do not use.|

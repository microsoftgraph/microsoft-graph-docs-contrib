---
title: "cloudCertificationAuthorityHashingAlgorithm enum type"
description: "Enum type of possible certificate hashing algorithms used by the certification authority to create certificates."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# cloudCertificationAuthorityHashingAlgorithm enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum type of possible certificate hashing algorithms used by the certification authority to create certificates.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. The hashing algorithm is unknown or invalid.|
|sha256|1|The hashing algorithm is SHA-256.|
|sha384|2|The hashing algorithm is SHA-384.|
|sha512|3|The hashing algorithm is SHA-512.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

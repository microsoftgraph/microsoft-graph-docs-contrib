---
title: "cloudCertificationAuthorityKeyPlatformType enum type"
description: "Enum type of possible key platforms used by the certification authority."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
---

# cloudCertificationAuthorityKeyPlatformType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum type of possible key platforms used by the certification authority.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. The key platform type is unknown or invalid.|
|software|1|The certification authority keys are stored in software.|
|hardwareSecurityModule|2|The certification authority keys are stored in a hardware security module.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|

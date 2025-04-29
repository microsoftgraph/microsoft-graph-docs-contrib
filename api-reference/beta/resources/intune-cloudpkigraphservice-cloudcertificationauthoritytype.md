---
title: "cloudCertificationAuthorityType enum type"
description: "Enum type of possible certificate authority types. This feature supports a two-tier certification authority model with a root certification authority and one or more child issuing (intermediate) certification authorities."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# cloudCertificationAuthorityType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum type of possible certificate authority types. This feature supports a two-tier certification authority model with a root certification authority and one or more child issuing (intermediate) certification authorities.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0||
|rootCertificationAuthority|1||
|issuingCertificationAuthority|2||
|issuingCertificationAuthorityWithExternalRoot|3||
|unknownFutureValue|4||

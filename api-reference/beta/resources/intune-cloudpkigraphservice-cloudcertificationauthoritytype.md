---
title: "cloudCertificationAuthorityType enum type"
description: "Enum type of possible certificate authority types. This feature supports a two-tier certification authority model with a root certification authority and one or more child issuing (intermediate) certification authorities."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# cloudCertificationAuthorityType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum type of possible certificate authority types. This feature supports a two-tier certification authority model with a root certification authority and one or more child issuing (intermediate) certification authorities.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Unknown or invalid certification authority type.|
|rootCertificationAuthority|1|Indicates root certification authority. Can be used as the parent of an issuing certification authority. Root Certification Authority cannot issue leaf certificates.|
|issuingCertificationAuthority|2|Indicates issuing (subordinate) certification authority. Must have a parent root certification authority. Issuing Certification Authority can issue leaf certificates.|
|issuingCertificationAuthorityWithExternalRoot|3|Indicates issuing (subordinate) certification authority that has an external root certification authority. Issuing Certification Authority with external root can issue leaf certificates.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

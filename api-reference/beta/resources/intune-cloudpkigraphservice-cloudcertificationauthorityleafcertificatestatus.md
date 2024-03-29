---
title: "cloudCertificationAuthorityLeafCertificateStatus enum type"
description: "Enum type of possible leaf certificate statuses. These statuses indicate whether certificates are active and usable or unusable if they have been revoked or expired."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# cloudCertificationAuthorityLeafCertificateStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum type of possible leaf certificate statuses. These statuses indicate whether certificates are active and usable or unusable if they have been revoked or expired.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Unknown or invalid status.|
|active|1|Certificate is active, indicating it is in its validity period and not revoked.|
|revoked|2|Certificate has been revoked by its issuing certification authority.|
|expired|3|Certificate has expired.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|

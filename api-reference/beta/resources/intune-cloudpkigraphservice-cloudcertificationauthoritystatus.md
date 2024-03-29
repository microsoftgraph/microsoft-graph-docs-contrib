---
title: "cloudCertificationAuthorityStatus enum type"
description: "Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or potentially temporarily disabled or permanently decommissioned."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# cloudCertificationAuthorityStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or potentially temporarily disabled or permanently decommissioned.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Unknown or invalid status.|
|active|1|Certification authority is active and can issue certificates.|
|disabled|2|Certification authority has been disabled (stopped) from issuing certificates. Disabled certification authorities can be reactivated to continue issuing certificates.|
|decommissioned|3|Certification authority has been decommissioned. This is a permanent state that cannot be changed.|
|signingPending|4|The certification authority certificate signing request has been created and can be downloaded for signing and then be uploaded.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|

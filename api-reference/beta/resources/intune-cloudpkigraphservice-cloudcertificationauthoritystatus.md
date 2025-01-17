---
title: "cloudCertificationAuthorityStatus enum type"
description: "Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or temporarily paused or permanently revoked."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 10/15/2024
---

# cloudCertificationAuthorityStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or temporarily paused or permanently revoked.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Indicates certification authority has an unknown or invalid status.|
|active|1|Indicates certification authority is active and can issue certificates.|
|paused|2|Indicates certification authority has been paused from issuing certificates. Paused certification authorities can be put back in an active status to continue issuing certificates.|
|revoked|3|Indicates certification authority has been revoked. This is a permanent state that cannot be changed.|
|signingPending|4|Indicates certification authority certificate signing request has been created and can be downloaded for signing and then be uploaded.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|

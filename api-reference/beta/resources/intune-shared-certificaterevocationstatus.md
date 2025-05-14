---
title: "certificateRevocationStatus enum type"
description: "Certificate Revocation Status."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# certificateRevocationStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Certificate Revocation Status.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Not revoked.|
|pending|1|Revocation pending.|
|issued|2|Revocation command issued.|
|failed|3|Revocation failed.|
|revoked|4|Revoked.|

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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
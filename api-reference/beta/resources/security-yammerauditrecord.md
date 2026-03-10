---
title: "yammerAuditRecord resource type"
description: "Represents an audit record for activities in Microsoft Yammer enterprise social networking service."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Yammer audit record"
---
# yammerAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for activities in Microsoft Yammer enterprise social networking service. This resource captures user and administrative actions within the Yammer platform, including message creation, community management, file sharing, policy changes, and network configuration modifications. The audit data helps organizations monitor Yammer usage, ensure compliance with communication policies, and track the handling of potentially sensitive information shared through enterprise social channels.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.yammerAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.yammerAuditRecord"
}
```


---
title: "searchAuditRecord resource type"
description: "Represents an audit record for search activities performed across Microsoft 365 services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Search audit record"
---
# searchAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures search activities performed across Microsoft 365 services. This resource tracks search queries executed by users, including search terms, scope, results, and other relevant metadata. These audit records help organizations monitor search activities for security analysis, data access patterns, and compliance purposes, providing visibility into what information users are actively seeking within the environment.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.searchAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.searchAuditRecord"
}
```


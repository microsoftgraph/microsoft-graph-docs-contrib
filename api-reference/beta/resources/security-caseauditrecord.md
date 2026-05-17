---
title: "caseAuditRecord resource type"
description: "Represents an audit record for eDiscovery case events."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Case audit record"
---
# caseAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for eDiscovery case events. This resource captures information about case lifecycle activities, including case creation, modification, closure, and deletion.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseAuditRecord"
}
```


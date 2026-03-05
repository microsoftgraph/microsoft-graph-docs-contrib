---
title: "vivaGoalsAuditRecord resource type"
description: "Represents an audit record for Microsoft Viva Goals activities that may be relevant for compliance and security monitoring."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Viva goals audit record"
---
# vivaGoalsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Microsoft Viva Goals activities that may be relevant for compliance and security monitoring. This resource captures actions performed within the Viva Goals application, including the creation, modification, and deletion of objectives and key results (OKRs), changes to goal assignments, and modifications to goal permissions and sharing settings. The audit data helps organizations track how strategic information is managed and accessed, ensuring proper governance of potentially sensitive business objectives.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vivaGoalsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vivaGoalsAuditRecord"
}
```


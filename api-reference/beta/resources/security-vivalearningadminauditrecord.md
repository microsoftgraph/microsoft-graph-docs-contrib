---
title: "vivaLearningAdminAuditRecord resource type"
description: "Represents an audit record for administrative activities in Microsoft Viva Learning."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Viva learning admin audit record"
---
# vivaLearningAdminAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for administrative activities in Microsoft Viva Learning. This resource captures actions performed by administrators within the Viva Learning platform, including configuration changes, learning content management, learning path creation or modification, and changes to learning policies or permissions. The audit data helps organizations track how their learning programs are managed and ensure proper governance of learning content and access controls.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vivaLearningAdminAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vivaLearningAdminAuditRecord"
}
```


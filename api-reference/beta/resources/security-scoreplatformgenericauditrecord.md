---
title: "scorePlatformGenericAuditRecord resource type"
description: "Represents a generic audit record for activities in security scoring platforms."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Score Platform generic audit record"
---
# scorePlatformGenericAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a generic audit record for activities in security scoring platforms. This resource captures various administrative and operational actions performed within security assessment and scoring services, such as Microsoft Secure Score. These audit records help organizations track changes to security scoring configurations, assessments, and recommendations, providing visibility into how security posture evaluations are being managed.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.scorePlatformGenericAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.scorePlatformGenericAuditRecord"
}
```


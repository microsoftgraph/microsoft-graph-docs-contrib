---
title: "teamsHealthcareAuditRecord resource type"
description: "Represents an audit record for healthcare-specific activities in Microsoft Teams."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Teams healthcare audit record"
---
# teamsHealthcareAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures healthcare-specific activities in Microsoft Teams. This resource tracks actions performed within healthcare-focused Teams features, such as patient coordination, care team collaboration, and virtual visits. These audit records help healthcare organizations monitor their Teams usage for HIPAA compliance and other healthcare regulatory requirements, providing specialized tracking for sensitive healthcare collaboration activities.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.teamsHealthcareAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.teamsHealthcareAuditRecord"
}
```


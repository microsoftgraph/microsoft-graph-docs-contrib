---
title: "crmBaseAuditRecord resource type"
description: "Represents a base audit record for Customer Relationship Management (CRM) system activities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "CRM base audit record"
---
# crmBaseAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a base audit record for Customer Relationship Management (CRM) system activities. This resource serves as the foundation for CRM-related audit records, capturing core audit information about actions taken within CRM systems that may have security or compliance implications.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.crmBaseAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.crmBaseAuditRecord"
}
```


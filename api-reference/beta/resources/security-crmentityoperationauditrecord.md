---
title: "crmEntityOperationAuditRecord resource type"
description: "Represents an audit record for operations performed on entities within a Customer Relationship Management (CRM) system."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "CRM entity operation audit record"
---
# crmEntityOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for operations performed on entities within a Customer Relationship Management (CRM) system. This resource captures detailed audit information about actions such as create, read, update, and delete operations on CRM entities, providing security and compliance visibility into CRM data interactions.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.crmEntityOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.crmEntityOperationAuditRecord"
}
```


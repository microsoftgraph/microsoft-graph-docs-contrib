---
title: "todoAuditRecord resource type"
description: "Represents an audit record for Microsoft To Do activities that may be relevant for security and compliance monitoring."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Todo audit record"
---
# todoAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Microsoft To Do activities that may be relevant for security and compliance monitoring. This resource captures user actions performed in the Microsoft To Do application, such as creating, modifying, or deleting tasks and task lists. The audit data helps organizations track user productivity activities and identify potential security concerns related to task management within their Microsoft 365 environment.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.todoAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.todoAuditRecord"
}
```


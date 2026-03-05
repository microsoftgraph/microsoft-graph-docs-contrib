---
title: "sharePointListOperationAuditRecord resource type"
description: "Represents an audit record for list operations in SharePoint."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SharePoint list operation audit record"
---
# sharePointListOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures list operations in SharePoint. This resource tracks activities related to SharePoint lists and libraries, including list creation, deletion, modification, item additions, and configuration changes. These audit records help organizations monitor structured data management activities within SharePoint, providing visibility into how lists are being used and managed across the environment.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sharePointListOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sharePointListOperationAuditRecord"
}
```


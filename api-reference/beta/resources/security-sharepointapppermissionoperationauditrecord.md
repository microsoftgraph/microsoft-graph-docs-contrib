---
title: "sharePointAppPermissionOperationAuditRecord resource type"
description: "Represents an audit record for SharePoint app permission operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SharePoint app permission operation audit record"
---
# sharePointAppPermissionOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures SharePoint app permission operations. This resource tracks activities related to granting, modifying, or revoking permissions for applications that integrate with SharePoint. These audit records help organizations monitor app permission management activities for security and compliance purposes, providing visibility into which apps have been granted access to SharePoint resources and any changes to those permissions.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sharePointAppPermissionOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sharePointAppPermissionOperationAuditRecord"
}
```


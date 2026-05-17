---
title: "sharePointAuditRecord resource type"
description: "Represents an audit record for general SharePoint activities."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "SharePoint audit record"
---
# sharePointAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures general SharePoint activities. This resource tracks a wide range of actions performed within SharePoint sites, including file operations, site administration, and user activities. These audit records help organizations monitor SharePoint usage patterns, track content access and modifications, and investigate potential security incidents or compliance violations within their SharePoint environment.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sharePointAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sharePointAuditRecord"
}
```


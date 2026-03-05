---
title: "tenantAllowBlockListAuditRecord resource type"
description: "Represents an audit record for tenant-level allow and block list management."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Tenant allow block list audit record"
---
# tenantAllowBlockListAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures tenant-level allow and block list management. This resource tracks activities related to the configuration and modification of organization-wide allow or block lists for entities such as URLs, domains, file hashes, or IP addresses. These audit records help organizations monitor changes to their security filtering configurations, providing visibility into who is modifying allow/block lists and what specific changes are being made.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.tenantAllowBlockListAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.tenantAllowBlockListAuditRecord"
}
```


---
title: "unifiedGroupAuditRecord resource type"
description: "Represents an audit record for Microsoft 365 Groups (unified groups) operations that are relevant for security monitoring."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Unified group audit record"
---
# unifiedGroupAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Microsoft 365 Groups (unified groups) operations that are relevant for security monitoring. This resource captures activities related to the creation, modification, deletion, and membership management of Microsoft 365 Groups. The audit data helps security administrators track group-related activities to ensure proper access control, detect unauthorized changes to group settings or membership, and maintain compliance with organizational governance policies.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.unifiedGroupAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.unifiedGroupAuditRecord"
}
```


---
title: "uamOperationAuditRecord resource type"
description: "Represents an audit record for User Access Management (UAM) operations in Microsoft security services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "UAM operation audit record"
---
# uamOperationAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for User Access Management (UAM) operations in Microsoft security services. This resource captures activities related to user access management, including user role assignments, permission changes, access reviews, and other operations that affect who can access security features and data. The audit information helps security administrators track changes to access controls and maintain a complete record of who made changes to user permissions within the security ecosystem.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.uamOperationAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.uamOperationAuditRecord"
}
```


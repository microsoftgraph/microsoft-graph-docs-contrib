---
title: "cpsPolicyConfigAuditRecord resource type"
description: "Represents an audit record for policy configuration changes in the Customer Protection Service (CPS)."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "CPS policy config audit record"
---
# cpsPolicyConfigAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for policy configuration changes in the Customer Protection Service (CPS). This resource captures detailed audit information about modifications to policy configurations, including creation, updates, and deletions of policy settings related to customer protection.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cpsPolicyConfigAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cpsPolicyConfigAuditRecord"
}
```


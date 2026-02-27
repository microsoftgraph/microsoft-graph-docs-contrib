---
title: "retentionPolicyAuditRecord resource type"
description: "Represents an audit record for retention policy activities in Microsoft 365."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
toc.title: "Retention policy audit record"
---
# retentionPolicyAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures retention policy activities in Microsoft 365. This resource tracks actions related to the creation, modification, and application of retention policies that govern how content is preserved, deleted, or archived across the organization. These audit records help organizations monitor their retention policy management for compliance with regulatory requirements and internal governance policies.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.retentionPolicyAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.retentionPolicyAuditRecord"
}
```


---
title: "vfamDeletePolicyAuditRecord resource type"
description: "Represents an audit record for the deletion of Virtual Filtering Access Management (VFAM) policies."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "VFAM delete policy audit record"
---
# vfamDeletePolicyAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for the deletion of Virtual Filtering Access Management (VFAM) policies. This resource captures detailed information about the removal of VFAM policies, including who deleted the policy, when it was deleted, and which policy was removed. The audit data helps security administrators track the removal of filtering and access control rules, which is critical for understanding changes to the security posture and ensuring that policy removals are authorized and properly documented.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vfamDeletePolicyAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vfamDeletePolicyAuditRecord"
}
```


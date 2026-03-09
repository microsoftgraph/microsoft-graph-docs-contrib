---
title: "vfamCreatePolicyAuditRecord resource type"
description: "Represents an audit record for the creation of Virtual Filtering Access Management (VFAM) policies."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "VFAM create policy audit record"
---
# vfamCreatePolicyAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for the creation of Virtual Filtering Access Management (VFAM) policies. This resource captures detailed information about the creation of new VFAM policies, including who created the policy, when it was created, what settings were configured, and the scope of the policy. The audit data helps security administrators track the establishment of new filtering and access control rules that govern network traffic and resource access within the organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vfamCreatePolicyAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vfamCreatePolicyAuditRecord"
}
```


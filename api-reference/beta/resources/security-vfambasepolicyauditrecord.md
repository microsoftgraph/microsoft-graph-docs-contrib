---
title: "vfamBasePolicyAuditRecord resource type"
description: "Represents an audit record for Virtual Filtering Access Management (VFAM) base policy operations."
author: palakagrawaljk
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "VFAM base policy audit record"
---
# vfamBasePolicyAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for Virtual Filtering Access Management (VFAM) base policy operations. This resource captures activities related to the base configuration of VFAM policies, which manage network filtering and access controls. The audit data helps security administrators track changes to foundational security policies that control network traffic filtering, access permissions, and security boundaries within the organization's environment.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vfamBasePolicyAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vfamBasePolicyAuditRecord"
}
```


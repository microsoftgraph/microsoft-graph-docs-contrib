---
title: "vfamUpdatePolicyAuditRecord resource type"
description: "Represents an audit record for updates to Virtual Filtering Access Management (VFAM) policies."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "VFAM update policy audit record"
---
# vfamUpdatePolicyAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record for updates to Virtual Filtering Access Management (VFAM) policies. This resource captures detailed information about modifications made to existing VFAM policies, including who made the changes, when they were made, which policy was modified, and what specific settings were updated. The audit data helps security administrators track evolving policy configurations, understand how access control rules change over time, and ensure that all policy modifications align with organizational security requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vfamUpdatePolicyAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vfamUpdatePolicyAuditRecord"
}
```


---
title: "managedTenantsAuditRecord resource type"
description: "Represents an audit record that captures activities related to managed tenant operations in a multi-tenant management scenario."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Managed tenants audit record"
---
# managedTenantsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to managed tenant operations in a multi-tenant management scenario. This record type documents events such as tenant onboarding, configuration changes, and administrative actions performed by managed service providers (MSPs) or delegated administrators across multiple customer tenants, providing visibility into cross-tenant management activities.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.managedTenantsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.managedTenantsAuditRecord"
}
```


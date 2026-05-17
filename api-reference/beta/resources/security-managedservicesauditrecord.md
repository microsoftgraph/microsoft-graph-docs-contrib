---
title: "managedServicesAuditRecord resource type"
description: "Represents an audit record that captures activities related to managed security services within the Microsoft 365 environment."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Managed services audit record"
---
# managedServicesAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to managed security services within the Microsoft 365 environment. This record type documents events such as configuration changes, policy updates, and operational activities performed by managed security service providers (MSSPs) or internal managed security teams on behalf of the organization.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.managedServicesAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.managedServicesAuditRecord"
}
```


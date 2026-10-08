---
title: "dynamics365BusinessCentralAuditRecord resource type"
description: "Represents an audit record that captures user and system activities within Dynamics 365 Business Central."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Dynamics 365 Business Central audit record"
---
# dynamics365BusinessCentralAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures user and system activities within Dynamics 365 Business Central. This record type documents actions taken within the Business Central application, including data modifications, business process executions, configuration changes, and user access events. These audit records help organizations track changes to their ERP system for security, compliance, and operational monitoring purposes.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.dynamics365BusinessCentralAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dynamics365BusinessCentralAuditRecord"
}
```


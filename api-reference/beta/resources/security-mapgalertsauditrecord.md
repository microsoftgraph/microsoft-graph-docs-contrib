---
title: "mapgAlertsAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Active Protection Gateway (MAPG) alerts."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "MAPG alerts audit record"
---
# mapgAlertsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Active Protection Gateway (MAPG) alerts. This record type documents events such as alert generation, investigation, remediation, and management actions taken in response to security threats detected by the Active Protection Gateway, providing visibility into the security incident lifecycle.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mapgAlertsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mapgAlertsAuditRecord"
}
```


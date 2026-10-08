---
title: "powerAppsAuditAppRecord resource type"
description: "Represents an audit record that captures information about activities related to Power Apps applications."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power Apps audit app record"
---
# powerAppsAuditAppRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities related to Power Apps applications. This resource provides details about app creation, modification, sharing, permissions changes, and usage events in the Power Apps platform. These audit records help organizations track how low-code applications are being developed, deployed, and accessed across the organization to ensure governance and compliance with organizational policies.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerAppsAuditAppRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerAppsAuditAppRecord"
}
```


---
title: "powerBiAuditRecord resource type"
description: "Represents an audit record that captures information about activities in Power BI."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power BI audit record"
---
# powerBiAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities in Power BI. This resource provides details about report creation, dataset modifications, dashboard sharing, workspace management, and other operations performed within the Power BI service. These audit records help organizations track how business intelligence assets are being created, modified, shared, and accessed to ensure proper governance and compliance with data handling policies.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerBiAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerBiAuditRecord"
}
```


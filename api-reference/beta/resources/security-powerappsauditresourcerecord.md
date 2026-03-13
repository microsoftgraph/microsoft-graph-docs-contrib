---
title: "powerAppsAuditResourceRecord resource type"
description: "Represents an audit record that captures information about activities related to Power Apps resources and components."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power Apps audit resource record"
---
# powerAppsAuditResourceRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about activities related to Power Apps resources and components. This resource provides details about the creation, modification, deletion, and usage of resources such as connectors, data sources, environments, and custom components within the Power Apps platform. These audit records help organizations track how platform resources are being utilized, who is accessing them, and ensure compliance with governance policies for low-code development environments.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerAppsAuditResourceRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerAppsAuditResourceRecord"
}
```


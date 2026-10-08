---
title: "powerPlatformServiceActivityAuditRecord resource type"
description: "Represents an audit record that captures information about service-level activities in the Power Platform."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Power Platform service activity audit record"
---
# powerPlatformServiceActivityAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about service-level activities in the Power Platform. This resource provides details about background services, system processes, and automated operations performed by the Power Platform infrastructure itself rather than by users or administrators. These audit records help organizations track system-level events, service health indicators, and platform operations that may affect their Power Platform resources.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.powerPlatformServiceActivityAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.powerPlatformServiceActivityAuditRecord"
}
```


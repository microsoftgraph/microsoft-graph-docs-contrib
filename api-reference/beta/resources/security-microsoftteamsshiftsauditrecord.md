---
title: "microsoftTeamsShiftsAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Teams Shifts workforce management."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Teams shifts audit record"
---
# microsoftTeamsShiftsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Teams Shifts workforce management. This record type documents events such as schedule creation, shift assignments, time off requests, schedule swaps, and other workforce management activities performed within the Shifts app in Teams, providing visibility into scheduling and time management operations.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftTeamsShiftsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftTeamsShiftsAuditRecord"
}
```


---
title: "plannerRosterSensitivityLabelAuditRecord resource type"
description: "Represents an audit record that captures information about sensitivity label applications to Planner rosters."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Planner roster sensitivity label audit record"
---
# plannerRosterSensitivityLabelAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures information about sensitivity label applications to Planner rosters. This resource provides details about when sensitivity labels are applied, changed, or removed from Microsoft Planner rosters, including information about who made the change and which specific label was applied. These audit records help organizations track the classification and protection of their Planner content to ensure compliance with information protection policies.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.plannerRosterSensitivityLabelAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.plannerRosterSensitivityLabelAuditRecord"
}
```


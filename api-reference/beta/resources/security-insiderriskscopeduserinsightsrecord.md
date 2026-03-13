---
title: "insiderRiskScopedUserInsightsRecord resource type"
description: "Represents an audit record that captures insider risk insights for specific scoped users."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Insider risk scoped user insights record"
---
# insiderRiskScopedUserInsightsRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures insider risk insights for specific scoped users. This record type documents insights and analytics related to potential insider risk activities for users who have been specifically targeted for enhanced monitoring. These audit records help organizations track how insider risk management solutions are analyzing user behaviors and identifying potential security threats from within the organization.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.insiderRiskScopedUserInsightsRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.insiderRiskScopedUserInsightsRecord"
}
```


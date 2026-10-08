---
title: "insiderRiskScopedUsersRecord resource type"
description: "Represents an audit record that captures operations related to users scoped for insider risk management."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Insider risk scoped users record"
---
# insiderRiskScopedUsersRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures operations related to users scoped for insider risk management. This record type documents when users are added to or removed from insider risk management scoping, including details about who made the change, when it occurred, and the affected users. These audit records help organizations track which users are being monitored for potential insider risks and maintain compliance with internal security policies.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.insiderRiskScopedUsersRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.insiderRiskScopedUsersRecord"
}
```


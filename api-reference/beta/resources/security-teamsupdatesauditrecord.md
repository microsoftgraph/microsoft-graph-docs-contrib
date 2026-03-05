---
title: "teamsUpdatesAuditRecord resource type"
description: "Represents an audit record for update activities in Microsoft Teams."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Teams updates audit record"
---
# teamsUpdatesAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures update activities in Microsoft Teams. This resource tracks changes and updates to Teams components, including client updates, service updates, and policy changes. These audit records help organizations monitor the evolution of their Teams environment, providing visibility into version changes, feature updates, and configuration modifications that may affect functionality, security, or compliance.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.teamsUpdatesAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.teamsUpdatesAuditRecord"
}
```


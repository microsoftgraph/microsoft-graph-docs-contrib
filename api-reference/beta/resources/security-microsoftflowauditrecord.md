---
title: "microsoftFlowAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Power Automate (formerly Flow) operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Flow audit record"
---
# microsoftFlowAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Power Automate (formerly Flow) operations. This record type documents events such as flow creation, modification, execution, sharing, and deletion, providing visibility into automated workflows and their operational history within the organization, including information about flow triggers, actions, connections, and permissions.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftFlowAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftFlowAuditRecord"
}
```


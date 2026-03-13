---
title: "labelContentExplorerAuditRecord resource type"
description: "Represents an audit record that captures activities related to using the sensitivity label content explorer."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Label content explorer audit record"
---
# labelContentExplorerAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to using the sensitivity label content explorer. This record type documents when administrators or security personnel use the content explorer to search for, view, or analyze content with specific sensitivity labels. These audit records help organizations track who is investigating labeled content and maintain compliance with data governance requirements.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.labelContentExplorerAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.labelContentExplorerAuditRecord"
}
```


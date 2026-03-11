---
title: "microsoftFormsAuditRecord resource type"
description: "Represents an audit record that captures activities related to Microsoft Forms operations."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/05/2026
toc.title: "Microsoft Forms audit record"
---
# microsoftFormsAuditRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit record that captures activities related to Microsoft Forms operations. This record type documents events such as form creation, editing, sharing, response collection, and deletion, providing visibility into the lifecycle of forms and surveys within the organization, including information about form settings, permissions, and response handling.

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md). The audit data for this record type is returned as the **auditData** property in an [auditLogRecord](../resources/security-auditlogrecord.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.microsoftFormsAuditRecord"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.microsoftFormsAuditRecord"
}
```


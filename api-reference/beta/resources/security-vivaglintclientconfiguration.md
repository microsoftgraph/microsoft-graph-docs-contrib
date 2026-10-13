---
title: "vivaGlintClientConfiguration resource type"
description: "Represents audit data for Viva Glint Client Configuration events."
author: "diksha27"
ms.date: 9/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# vivaGlintClientConfiguration resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Audit data for Viva Glint Client Configuration events returned in the **auditData** property of an [auditLogRecord](../resources/security-auditlogrecord.md).

Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md).

This resource is an open type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dynamicProperties|[microsoft.graph.security.auditRecordTypeDictionary](../resources/security-auditrecordtypedictionary.md)|An open-type dictionary that contains dynamic audit event properties as name-value pairs. Inherited from [microsoft.graph.security.auditData](../resources/security-auditdata.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.vivaGlintClientConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.vivaGlintClientConfiguration",
  "dynamicProperties": {
    "@odata.type": "microsoft.graph.security.auditRecordTypeDictionary"
  }
}
```


---
title: "stringValueProperty resource type"
description: "Represents a string value recorded in a modified property."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# stringValueProperty resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a string value in a [modifiedProperty](../resources/security-casemanagement-modifiedproperty.md). Returned in the **oldValue** and **newValue** properties.

Inherits from [microsoft.graph.security.caseManagement.valueProperty](../resources/security-casemanagement-valueproperty.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|The string value.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.stringValueProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.stringValueProperty",
  "value": "String"
}
```

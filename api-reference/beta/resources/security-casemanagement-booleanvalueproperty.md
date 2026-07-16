---
title: "booleanValueProperty resource type"
description: "Represents a Boolean value recorded in a modified property."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# booleanValueProperty resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Boolean value in a [modifiedProperty](../resources/security-casemanagement-modifiedproperty.md). Returned in the **oldValue** and **newValue** properties.

Inherits from [microsoft.graph.security.caseManagement.valueProperty](../resources/security-casemanagement-valueproperty.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|Boolean|The Boolean value.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.booleanValueProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.booleanValueProperty",
  "value": "Boolean"
}
```

---
title: "valueBasedAttribute resource type"
description: "An attribute backed by a static value."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# valueBasedAttribute resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An attribute backed by a static value.

Inherits from [customClaimAttributeBase](../resources/customclaimattributebase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|The static value to be used an the attribute.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.valueBasedAttribute"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.valueBasedAttribute",
  "value": "String"
}
```


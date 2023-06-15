---
title: "webCategory resource type"
description: "Represents the type or classification of a web category"
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# webCategory resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the type or classification of a web category


Inherits from [microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Represents the display name or label associated with a web category|
|group|String|Represents the grouping or classification of a web category|
|name|String|Represents the unique identifier or code associated with a web category|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webCategory",
  "displayName": "String",
  "name": "String",
  "group": "String"
}
```


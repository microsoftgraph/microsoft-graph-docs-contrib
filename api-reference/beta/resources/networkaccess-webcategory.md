---
title: "webCategory resource type"
description: "Specifies the category or type of a website or online resource, helping to classify and filter internet traffic based on content."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# webCategory resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the category or type of a website or online resource, helping to classify and filter internet traffic based on content.


Inherits from [microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Label associated with the specified web category.|
|group|String|Grouping or category to which the web category belongs.|
|name|String|unique name associated with the web category.|

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


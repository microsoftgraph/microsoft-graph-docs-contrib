---
title: "webCategory resource type"
description: "Specifies the category or type of a website or online resource, helping to classify and filter internet traffic based on content."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-id
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
|displayName|String|The display name for the web category.|
|group|String|The group or category to which the web category belongs.|
|name|String|The unique name that is associated with the web category.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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


---
title: "standardWebPart resource type"
description: Represent a standard WebPart instance on a SharePoint page
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# standardWebPart resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent a standard WebPart instance on a SharePoint page.

Inherits from [webPart](../resources/webpart.md).

## Methods
There is no methods available on this resource.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|data|[webPartData](../resources/webpartdata.md)|Data of the WebPart. |
|id|String|Instance identifier of the webPart.Inherited from [entity](../resources/entity.md).|
|webPartType|String|A Guid which indicates the type of the webPart|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.standardWebPart",
  "baseType": "microsoft.graph.webPart",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.standardWebPart",
  "id": "String (identifier)",
  "webPartType": "String",
  "data": {
    "@odata.type": "microsoft.graph.webPartData"
  }
}
```


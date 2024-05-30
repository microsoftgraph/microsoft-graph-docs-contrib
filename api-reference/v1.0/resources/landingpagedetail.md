---
title: "landingPageDetail resource type"
description: "Represents an attack simulation landing page detail."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# landingPageDetail resource type

Namespace: microsoft.graph

Represents an attack simulation landing page detail.

Inherits from [entity](../resources/entity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|content|String|Landing page detail content.|
|id|String|Unique identifier for the **landingPageDetail** object. Inherited from [entity](../resources/entity.md).|
|isDefaultLangauge|Boolean|Indicates whether this language detail is default for the landing page.|
|language|String|The content language for the landing page.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.landingPageDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.landingPageDetail",
  "content": "String",
  "id": "String (identifier)",
  "isDefaultLangauge": "Boolean",
  "language": "String"
}
```

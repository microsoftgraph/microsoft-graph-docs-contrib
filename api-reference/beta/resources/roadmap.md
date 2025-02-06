---
title: "roadmap resource type"
description: "Represents the Microsoft Entra product roadmap, which comprises public previews and general availability releases."
author: "garretraziel"
ms.date: 11/20/2024
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# roadmap resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Microsoft Entra product roadmap, which comprises public previews and general availability releases.

Inherits from [changeItemBase](../resources/changeitembase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/roadmap-list.md)|[roadmap](../resources/roadmap.md) collection|Get a list of the [roadmap](../resources/roadmap.md) objects and their properties.|
|[Get](../api/roadmap-get.md)|[roadmap](../resources/roadmap.md)|Read the properties and relationships of a [roadmap](../resources/roadmap.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|String|Indicates the category with which this item is associated. Supports `$filter` (`eq`, `ne`, `in`) and `$orderby`.|
|changeItemService|String|Specifies the Microsoft Entra service name to which this item belongs. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`eq`, `ne`, `in`) and `$orderby`.|
|changeItemState|changeItemState|Indicates whether this feature was released or if it's an upcoming release. The possible values are: `available`, `comingSoon`, `unknownFutureValue`. Supports `$filter` (`eq`, `ne`, `in`) and `$orderby`.|
|deliveryStage|roadmapItemDeliveryStage|Denotes the current lifecycle state of the feature. The possible values are: `privatePreview`, `publicPreview`, `ga`, `unknownFutureValue`. Supports `$filter` (`eq`, `ne`, `in`) and `$orderby`.|
|description|String|Description of the feature. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|
|documentationUrls|String collection|Link to the feature documentation. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`any` with `eq`).|
|gotoLink|String|Link to the feature page in the Microsoft Entra admin center. Supports `$filter` (`eq`, `ne`, `in`) and `$orderby`.|
|id|String|Unique identifier for the new feature. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|
|publishedDateTime|DateTimeOffset|Feature planned release date. Supports `$filter` (`eq`, `ne`, `gt`, `lt`, `le` and `ge` on `year()`, `month()`, `day()`, `hour()`, `minute()`, and `second()` built in functions) and `$orderby`.|
|shortDescription|String|A short description of the feature. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|
|systemTags|String collection|Microsoft Entra specific tags. Example value: *New release highlight* - `entra_roadmap_highlight_new_feature`. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`any` with `eq`).|
|tags|String collection|Identity and Access Management (IAM) related tags. Example values: `External Identities`, `Reliability and Resilience`. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`any` with `eq`).|
|title|String|Title of the feature. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roadmap",
  "baseType": "microsoft.graph.changeItemBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roadmap",
  "id": "String (identifier)",
  "changeItemState": "String",
  "changeItemService": "String",
  "tags": [
    "String"
  ],
  "systemTags": [
    "String"
  ],
  "documentationUrls": [
    "String"
  ],
  "shortDescription": "String",
  "title": "String",
  "description": "String",
  "deliveryStage": "String",
  "category": "String",
  "publishedDateTime": "String (timestamp)",
  "gotoLink": "String"
}
```

---
title: "recommendationTag resource type"
description: "Represents a user-defined free-form label applied to a Microsoft Entra recommendation or impacted resource."
author: "sanchariroy9197"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2026
---

# recommendationTag resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user-defined free-form label applied to a Microsoft Entra ID [recommendation](../resources/recommendation.md) or [impactedResource](../resources/impactedresource.md). Tags help you organize, group, and filter recommendations and impacted resources in the Microsoft Entra admin center.

Tags aren't directly writable through PATCH. Create a tag by using the [addTag](../api/recommendation-addtag.md) action on a recommendation or the [addTag](../api/impactedresource-addtag.md) action on an impacted resource, and remove a tag by using the corresponding [removeTag](../api/recommendation-removetag.md) actions.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The free-form label text. All characters and Unicode (all languages) are supported.|
|id|String|The unique identifier of the tag. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.recommendationTag",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recommendationTag",
  "id": "String (identifier)",
  "displayName": "String"
}
```

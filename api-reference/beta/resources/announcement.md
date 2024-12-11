---
title: "announcement resource type"
description: "Represents the Microsoft Entra change announcements, including deprecations, breaking changes, retirements, feature changes, and Microsoft-managed policies."
author: "garretraziel"
ms.date: 11/20/2024
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Change announcements
---

# announcement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Microsoft Entra change announcements, including deprecations, breaking changes, retirements, feature changes, and Microsoft-managed policies.

Inherits from [changeItemBase](../resources/changeitembase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/announcement-list.md)|[announcement](../resources/announcement.md) collection|Get a list of the [announcement](../resources/announcement.md) objects and their properties.|
|[Get](../api/announcement-get.md)|[announcement](../resources/announcement.md)|Read the properties and relationships of an [announcement](../resources/announcement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|announcementDateTime|DateTimeOffset|Change announcement date. Supports `$filter` (`eq`, `ne`, `gt`, `lt`, `le` and `ge` on `year()`, `month()`, `day()`, `hour()`, `minute()`, and `second()` built in functions) and `$orderby`.|
|changeItemService|String|Specifies the Microsoft Entra service name to which this item belongs. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`eq`, `ne`, `in`) and `$orderby`.|
|description|String|Description of the change announcement. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|
|documentationUrls|String collection|Link to the change documentation. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`any` with `eq`).|
|id|String|Unique identifier for the change announcement. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|
|impactLink|String|Change impact URL. Supports `$filter` (`eq`, `ne`, `in`) and `$orderby`.|
|isCustomerActionRequired|Boolean|Indicates whether the customer needs to take any action for this change. Supports `$filter` (`eq`, `ne`).|
|shortDescription|String|A short description of the change. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|
|systemTags|String collection|Microsoft Entra specific tags. Example value: *Top announcement* - `entra_roadmap_highlight_product_news`. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`any` with `eq`).|
|tags|String collection|Identity and Access Management (IAM) related tags. Example values: `External Identities`, `Reliability and Resilience`. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`any` with `eq`).|
|targetDateTime|DateTimeOffset|Date on which the change rolls out. Supports `$filter` (`eq`, `ne`, `gt`, `lt`, `le` and `ge` on `year()`, `month()`, `day()`, `hour()`, `minute()`, and `second()` built in functions) and `$orderby`.|
|title|String|Title of the change. Inherited from [changeItemBase](../resources/changeitembase.md). Supports `$filter` (`eq`, `ne`, `in`, `startswith`) and `$orderby`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.announcement",
  "baseType": "microsoft.graph.changeItemBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.announcement",
  "id": "String (identifier)",
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
  "announcementDateTime": "String (timestamp)",
  "targetDateTime": "String (timestamp)",
  "impactLink": "String",
  "isCustomerActionRequired": "Boolean"
}
```

---
title: "sensitivityLabelInfo resource type"
description: "Describes sensitivity label information returned for a Microsoft Graph search result."
author: "Chentong1201"
ms.date: 09/01/2026
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
---

# sensitivityLabelInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the sensitivity label applied to a search result. This complex type is returned in the **sensitivityLabel** property of the [searchHit](../resources/searchhit.md) resource.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
|color|String|The color that the UI should display for the label, if configured.|
|displayName|String|The display name of the sensitivity label.|
|priority|Int32|The display priority of the sensitivity label.|
|sensitivityLabelId|String|The identifier of the sensitivity label.|
|tooltip|String|The tooltip that the UI should display for the sensitivity label.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sensitivityLabelInfo"
} -->

```json
{
  "@odata.type": "#microsoft.graph.sensitivityLabelInfo",
  "sensitivityLabelId": "String",
  "displayName": "String",
  "tooltip": "String",
  "priority": "Int32",
  "color": "String"
}
```

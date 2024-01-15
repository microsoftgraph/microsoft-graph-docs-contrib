---
title: "horizontalSection resource type"
description: Represents a horizontal section in a given SharePoint page
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# horizontalSection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a horizontal section in a given SharePoint page.

Inherits from [entity](../resources/entity.md).

## Methods

| Method                                                      | Return type                                                       | Description                                                                                               |
| :---------------------------------------------------------- | :---------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------- |
| [List horizontalSections](../api/horizontalsection-list.md) | [horizontalSection](../resources/horizontalsection.md) collection | Get a list of the [horizontalSection](../resources/horizontalsection.md) objects and their properties.    |
| [Create horizontalSection](../api/sitepage-post-horizontalsection.md)    | [horizontalSection](../resources/horizontalsection.md)            | Create a new [horizontalSection](../resources/horizontalsection.md) object. |
| [Get horizontalSection](../api/horizontalsection-get.md)    | [horizontalSection](../resources/horizontalsection.md)            | Read the properties and relationships of a [horizontalSection](../resources/horizontalsection.md) object. |
| [Update horizontalSection](../api/horizontalsection-update.md)    | [horizontalSection](../resources/horizontalsection.md)            | Update the properties of a [horizontalSection](../resources/horizontalsection.md) object. |
| [Delete horizontalSection](../api/horizontalsection-delete.md)    | [horizontalSection](../resources/horizontalsection.md)            | Delete a [horizontalSection](../resources/horizontalsection.md) object. |

## Properties

| Property | Type                                                                                                | Description                                                                                                                                                                             |
| :------- | :-------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| emphasis | [sectionEmphasisType](../resources/horizontalsection.md#sectionemphasistype-values)                 | Enumeration value that indicates the emphasis of the section background. The possible values are: `none`, `netural`, `soft`, `strong`, `unknownFutureValue`.                            |
| id       | String                                                                                              | Unique identifier of the resource. Inherited from [entity](../resources/entity.md).                                                                                                     |
| layout   | [horizontalSectionLayoutType](../resources/horizontalsection.md#horizontalsectionlayouttype-values) | Layout type of the section. The possible values are: `none`, `oneColumn`, `twoColumns`, `threeColumns`, `oneThirdLeftColumn`, `oneThirdRightColumn`, `fullWidth`, `unknownFutureValue`. |

### sectionEmphasisType values

| Member             | Description                                           |
| :----------------- | :---------------------------------------------------- |
| none               | The section has no background.                        |
| neutral            | The section has a neutral emphasis in the background. |
| soft               | The section has a soft emphasis in the background.    |
| strong             | The section has a strong emphasis in the background.  |
| unknownFutureValue | Marker value for future compatibility.                |

### horizontalSectionLayoutType values

| Member              | Description                                                           |
| :------------------ | :-------------------------------------------------------------------- |
| none                | The section has no layout.                                            |
| oneColumn           | The section has only one column.                                      |
| twoColumns          | The section has two columns.                                          |
| threeColumns        | The section has three columns.                                        |
| oneThirdLeftColumn  | The section has a 1/3 column on the left and 2/3 column on the right. |
| oneThirdRightColumn | The section has a 2/3 column on the left and 1/3 column on the right. |
| fullWidth           | The section has one full width column.                                |
| unknownFutureValue  | Marker value for future compatibility.                                |

## Relationships

| Relationship | Type                                                                          | Description                                  |
| :----------- | :---------------------------------------------------------------------------- | :------------------------------------------- |
| columns      | [horizontalSectionColumn](../resources/horizontalsectioncolumn.md) collection | The set of vertical columns in this section. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.horizontalSection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.horizontalSection",
  "id": "String (identifier)",
  "layout": "String",
  "emphasis": "String"
}
```

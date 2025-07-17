---
title: 'verticalSection resource type'
description: Represents the vertical section in a given SharePoint page.
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
ms.date: 07/22/2024
---

# verticalSection resource type

Namespace: microsoft.graph



Represents the vertical section in a given SharePoint page.

Inherits from [entity](../resources/entity.md).

## Methods

| Method                                               | Return type                                        | Description                                                                                           |
| :--------------------------------------------------- | :------------------------------------------------- | :---------------------------------------------------------------------------------------------------- |
| [List](../api/webpart-list.md)              | [webPart](../resources/webPart.md) Collection      | Get a list of web parts associated with a [verticalSection](../resources/verticalSection.md) object.  |
| [Create](../api/sitepage-post-verticalsection.md)    | [verticalSection](../resources/verticalsection.md)            | Create a new [verticalSection](../resources/verticalsection.md) object. |
| [Get](../api/verticalsection-get.md) | [verticalSection](../resources/verticalsection.md) | Read the properties and relationships of a [verticalSection](../resources/verticalsection.md) object. |
| [Update](../api/verticalsection-update.md)    | [verticalSection](../resources/verticalsection.md)            | Update the properties of a [verticalSection](../resources/verticalsection.md) object. |
| [Delete](../api/verticalsection-delete.md)    | [verticalSection](../resources/verticalsection.md)            | Delete a [verticalSection](../resources/verticalsection.md) object. |

## Properties

| Property | Type                                                                                | Description                                                                                                                                                  |
| :------- | :---------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| emphasis | [sectionEmphasisType](../resources/horizontalsection.md#sectionemphasistype-values) | Enumeration value that indicates the emphasis of the section background. The possible values are: `none`, `netural`, `soft`, `strong`, `unknownFutureValue`. |
| id       | String                                                                              | Unique identifier of the resource. Inherited from [entity](../resources/entity.md).                                                                          |

## Relationships

| Relationship | Type                                          | Description                           |
| :----------- | :-------------------------------------------- | :------------------------------------ |
| webparts     | [webPart](../resources/webpart.md) collection | The set of web parts in this section. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.verticalSection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.verticalSection",
  "id": "String (identifier)",
  "emphasis": "String"
}
```

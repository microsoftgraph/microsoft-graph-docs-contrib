---
title: 'webPart resource type'
description: Represents a specific web part instance on a SharePoint page.
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
ms.date: 07/22/2024
---

# webPart resource type

Namespace: microsoft.graph



Represents a specific web part instance on a SharePoint page.

This is an abstract type.

Inherits from [entity](../resources/entity.md).

## Methods

| Method                                                                         | Return type                                        | Description                                                                                                                                 |
| :----------------------------------------------------------------------------- | :------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------ |
| [List](../api/webpart-list.md)                                        | [webPart](../resources/webpart.md) collection      | Get a list of the [webPart](../resources/webpart.md) objects and their properties.                                                          |
| [Get](../api/webpart-get.md)                                           | [webPart](../resources/webpart.md)                 | Read the properties and relationships of a [webPart](../resources/webpart.md) object.                                                       |
| [Delete](../api/webpart-delete.md)                                           | [webPart](../resources/webpart.md)                 | Deletes a [webPart](../resources/webpart.md) object.                                                |
| [Create](../api/sitepage-create-webpart.md)                                           | [webPart](../resources/webpart.md)                 | Create a new [webPart](../resources/webpart.md) object. |
| [Update](../api/webpart-update.md)                                           | [webPart](../resources/webpart.md)                 | Update the properties of a [webPart](../resources/webpart.md) object.     |
| [Get position](../api/webpart-getposition.md)                          | [webPartPosition](../resources/webpartposition.md) | Get the [webPartPosition](../resources/webpartposition.md) information of a [WebPart](../resources/webpart.md).                             |
| [Get by position](../api/sitepage-getwebpartsbyposition.md) | [webPart](../resources/webpart.md) collection      | Get a list of the [webPart](../resources/webpart.md) objects filtered by [webPartPosition](../resources/webpartposition.md) information.  |

## Properties

| Property | Type   | Description                                                                                 |
| :------- | :----- | :------------------------------------------------------------------------------------------ |
| id       | String | Unique instance identifier of the web part. Inherited from [entity](../resources/entity.md). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.webPart",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.webPart",
  "id": "String (identifier)"
}
```

---
title: "groupResource resource type"
description: "Represents the group resource in PIM. This will extend microsoft.graph.directoryObject entity."
ms.localizationpriority: medium
author: "shea3100"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 11/01/2025
---

# groupResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [PIM](privilegedaccess.md), an group resource represents the group resource in PIM.  This will extend [Directory object](directoryobject.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/privilegedaccessgroup-list-groups.md) | [groupResource](groupResource.md) collection | Retrieve a list of groupResource objects |
| [Get](../api/privilegedaccessgroupgroupresource-get.md)|[groupResource](groupResource.md)|Read the properties of a [groupResource](groupResource.md) object.|

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| Id | String | Indicates the identifier of the group. |

## Relationships

None

## JSON representation


The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupResource",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}-->
```json
{
  "id": "String (identifier)"
}
```

---
title: "groupResource resource type"
description: "Represents the group resource in Privileged Identity Management (PIM) for groups."
ms.localizationpriority: medium
author: "shea3100"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 11/01/2025
---

# groupResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the [group](../resources/group.md) resource in PIM for groups. This entity extends [directoryObject](../resources/directoryobject.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/privilegedaccessgroup-list-resources.md) | [groupResource](groupResource.md) collection | Retrieve a list of [groupResource](groupResource.md) objects. |
| [Get](../api/groupresource-get.md)|[groupResource](groupResource.md)|Read the properties of a [groupResource](groupResource.md) object. |

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| id | String | Indicates the identifier of the group. Inherited from [entity](../resources/entity.md).|
|deletedDateTime|DateTimeOffset|`null`. Inherited from [directoryObject](../resources/directoryobject.md).|

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
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)"
}
```

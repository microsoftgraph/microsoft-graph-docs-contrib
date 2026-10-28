---
title: "groupResource resource type"
description: "Represents the group resource in Privileged Identity Management (PIM) for groups."
ms.localizationpriority: medium
author: "shea3100"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 08/25/2026
---

# groupResource resource type

Namespace: microsoft.graph

Represents the [group](../resources/group.md) resource in PIM for groups. This entity extends [directoryObject](../resources/directoryobject.md).

## Methods

| Method | Return type | Description |
|:-------|:------------|:------------|
| [Get](../api/groupresource-get.md) | [groupResource](../resources/groupresource.md) | Read the properties of a [groupResource](../resources/groupresource.md) object. |
| [List](../api/privilegedaccessgroup-list-resources.md) | [groupResource](../resources/groupresource.md) collection | Retrieve a list of [groupResource](../resources/groupresource.md) objects. |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| deletedDateTime | DateTimeOffset | `null`. Inherited from [directoryObject](../resources/directoryobject.md). |
| id | String | The unique identifier for the group. Inherited from [entity](../resources/entity.md). |

## Relationships

None.

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
  "@odata.type": "#microsoft.graph.groupResource",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)"
}
```

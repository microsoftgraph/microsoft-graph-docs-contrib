---
title: "publishedResource resource type"
description: "publishedResource resource type."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# publishedResource resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents on-premises published resource.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get publishedResource](../api/publishedresource-get.md) | [publishedResource](publishedresource.md) | Read properties and relationships of publishedResource object. |
| [Create publishedResource](../api/publishedresource-create.md) |  [publishedResource](publishedresource.md)  | Create a new publishedResource. |
| [Update publishedResource](../api/publishedresource-update.md) | [publishedResource](publishedresource.md) | Update publishedResource object. |
| [Delete  publishedResource](../api/publishedresource-delete.md) | None | Delete publishedResource object. |
| [List publishedResources](../api/publishedresource-list.md) | [publishedResource](publishedresource.md) objects collection | Get publishedResources object collection. |
| [Assign publishedResource to onPremisesAgentGroup](../api/publishedresource-post-agentgroups.md) | None |  |
| [Remove publishedResource from onPremisesAgentGroup](../api/publishedresource-delete-agentgroups.md) | None |  |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String| Display Name of the publishedResource.|
|id|String| The object id of the publishedResource. Read-only.|
|publishingType|string| Possible values are: `appProxy`, `exchangeOnline`, `authentication`, `provisioning`, `adAdministration`.|
|resourceName|String|Name of the publishedResource.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agentGroups|[onPremisesAgentGroup](onpremisesagentgroup.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.publishedResource",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "publishingType": "string",
  "resourceName": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "publishedResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

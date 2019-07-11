---
title: "publishedResource resource type"
description: "publishedResource resource type."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# publishedResource resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get publishedResource](../api/onpremisespublishedresource-get.md) | [publishedResource](onpremisespublishedresource.md) | Read properties and relationships of publishedResource object. |
| [Create publishedResource](../api/onpremisespublishedresource-create.md) |  [publishedResource](onpremisespublishedresource.md)  | Create a new publishedResource. |
| [Update publishedResource](../api/onpremisespublishedresource-update.md) | [publishedResource](onpremisespublishedresource.md) | Update publishedResource object. |
| [Delete  publishedResource](../api/onpremisespublishedresource-delete.md) | None | Delete publishedResource object. |
| [List publishedResources](../api/onpremisespublishedresource-list.md) | [publishedResource](onpremisespublishedresource.md) objects collection | Get publishedResources object collection. |
| [Assign publishedResource to onPremisesAgentGroup](../api/onpremisespublishedresource-post-agentgroups.md) | None |  |
| [Remove publishedResource from onPremisesAgentGroup](../api/onpremisespublishedresource-delete-agentgroups.md) | None |  |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String||
|id|String| Read-only.|
|publishingType|string| Possible values are: `appProxy`, `exchangeOnline`, `authentication`, `provisioning`, `adAdministration`.|
|resourceName|String||

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
  "@odata.type": "microsoft.graph.publishedResource"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "publishingType": "string",
  "resourceName": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "publishedResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
---
title: "onPremisesAgentGroup resource type"
description: "onPremisesAgentGroup resource type."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# onPremisesAgentGroup resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents on-premises agents group.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get onPremisesAgentGroup](../api/onpremisesagentgroup-get.md) | [onPremisesAgentGroup](onpremisesagentgroup.md) | Read properties and relationships of onPremisesAgentGroup object. |
| [Create onPremisesAgentGroup](../api/onpremisesagentgroup-create.md)  | [onPremisesAgentGroup](onpremisesagentgroup.md) | Create a new onPremisesAgentGroup. |
| [List onPremisesAgentGroups](../api/onpremisesagentgroup-list.md) | onPremisesAgentGroups collection | Get a onPremisesAgentGroup objects collection. |
| [Update onPremisesAgentGroup](../api/onpremisesagentgroup-update.md) | [onPremisesAgentGroup](onpremisesagentgroup.md) | Update onPremisesAgentGroup object. |
| [Delete  onPremisesAgentGroup](../api/onpremisesagentgroup-delete.md) | None | Delete onPremisesAgentGroup object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Display Name of the onPremisesAgentGroup.|
|id|String| The object id of the onPremisesAgentGroup. Read-only.|
|isDefault|Boolean||
|publishingType|string| Possible values are: `appProxy`, `exchangeOnline`, `authentication`, `provisioning`, `adAdministration`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agents|[onPremisesAgent](onpremisesagent.md) collection| Read-only. Nullable.|
|publishedResources|[publishedResource](onpremisespublishedresource.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesAgentGroup",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "isDefault": true,
  "publishingType": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesAgentGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

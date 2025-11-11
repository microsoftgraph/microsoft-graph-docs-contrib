---
title: "onPremisesAgentGroup resource type"
description: "onPremisesAgentGroup resource type."
ms.localizationpriority: medium
author: "shahzad-khalid"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# onPremisesAgentGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents on-premises agents group. Agent groups enable a tenant admin to assign specific [agents](onpremisesagent.md) to serve specific [published on-premises resources](publishedresource.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/onpremisesagentgroup-list.md) | onPremisesAgentGroups collection | Get an **onPremisesAgentGroup** objects collection. |
| [Get](../api/onpremisesagentgroup-get.md) | [onPremisesAgentGroup](onpremisesagentgroup.md) | Read the properties and relationships of an **onPremisesAgentGroup** object. |
| [Create](../api/onpremisesagentgroup-post.md)  | [onPremisesAgentGroup](onpremisesagentgroup.md) | Create a new **onPremisesAgentGroup**. |
| [Update](../api/onpremisesagentgroup-update.md) | [onPremisesAgentGroup](onpremisesagentgroup.md) | Update an **onPremisesAgentGroup** object. |
| [Delete](../api/onpremisesagentgroup-delete.md) | None | Delete an **onPremisesAgentGroup** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Display name of the **onPremisesAgentGroup**.|
|id|String| The object ID of the **onPremisesAgentGroup**. Read-only.|
|isDefault|Boolean|Indicates if the **onPremisesAgentGroup** is the default agent group. Only a single agent group can be the default **onPremisesAgentGroup** and is set by the system.|
|publishingType|onPremisesPublishingType| Possible values are: `applicationProxy`, `exchangeOnline`, `authentication`, `provisioning`, `intunePfx`, `oflineDomainJoin`, `unknownFutureValue`, `privateAccess`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `privateAccess`.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agents|[onPremisesAgent](onpremisesagent.md) collection| List of **onPremisesAgent** that are assigned to an **onPremisesAgentGroup**. Read-only. Nullable.|
|publishedResources|[publishedResource](publishedresource.md) collection| List of **publishedResource** that are assigned to an **onPremisesAgentGroup**. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesAgentGroup",
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




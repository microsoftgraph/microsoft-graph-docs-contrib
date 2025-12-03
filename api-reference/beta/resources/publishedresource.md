---
title: "publishedResource resource type"
description: "publishedResource resource type."
ms.localizationpriority: medium
author: "shahzad-khalid"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# publishedResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents on-premises published resource. A tenant administrator can publish various types of on-premises resources - enterprise applications, domain controllers, servers, etc. [On-premises agents](onpremisesagent.md) installed by a tenant administrator can be configured to access/handle requests to a particular published resource.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/publishedresource-list.md) | [publishedResource](publishedresource.md) objects collection | Get a **publishedResources** object collection. |
| [Get](../api/publishedresource-get.md) | [publishedResource](publishedresource.md) | Read the properties and relationships of a **publishedResource** object. |
| [Create](../api/publishedresource-post.md) |  [publishedResource](publishedresource.md)  | Create a new **publishedResource**. |
| [Update](../api/publishedresource-update.md) | [publishedResource](publishedresource.md) | Update a **publishedResource** object. |
| [Delete](../api/publishedresource-delete.md) | None | Delete a **publishedResource** object. |
| [Assign to agent group](../api/publishedresource-post-agentgroups.md) | None | Assign a **publishedResource** object to an **onPremisesAgentGroup**. |
| [Remove from agent group](../api/publishedresource-delete-agentgroups.md) | None |  Remove a **publishedResource** object from an **onPremisesAgentGroup**.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String| Display Name of the publishedResource.|
|id|String| The object id of the publishedResource. Read-only.|
|publishingType|onPremisesPublishingType| The possible values are: `applicationProxy`, `exchangeOnline`, `authentication`, `provisioning`, `intunePfx`, `oflineDomainJoin`, `unknownFutureValue`, `privateAccess`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `privateAccess`.|
|resourceName|String|Name of the publishedResource.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agentGroups|[onPremisesAgentGroup](onpremisesagentgroup.md) collection| List of **onPremisesAgentGroups** that a **publishedResource** is assigned to. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.publishedResource",
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



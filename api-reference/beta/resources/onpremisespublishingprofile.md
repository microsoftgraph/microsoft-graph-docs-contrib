---
title: "onPremisesPublishingProfile resource type"
description: "onPremisesPublishingProfile resource type."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# onPremisesPublishingProfile resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get onPremisesPublishingProfile](../api/onpremisespublishingprofile-get.md) | [onPremisesPublishingProfile](onpremisespublishingprofile.md) | Read properties and relationships of onPremisesPublishingProfile object. |
| [Update onPremisesPublishingProfile](../api/onpremisespublishingprofile-update.md) | None | Update [hybridAgentUpdaterConfiguration](onpremiseshybridagentupdaterconfiguration.md) object properties.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hybridAgentUpdaterConfiguration|[hybridAgentUpdaterConfiguration](onpremiseshybridagentupdaterconfiguration.md)||
|id|String| Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agentGroups|[onPremisesAgentGroup](onpremisesagentgroup.md) collection| Read-only. Nullable.|
|agents|[onPremisesAgent](onpremisesagent.md) collection| Read-only. Nullable.|
|publishedResources|[publishedResource](onpremisespublishedresource.md) collection| Read-only. Nullable.|
|hybridAgentUpdaterConfiguration|[hybridAgentUpdaterConfiguration](onpremiseshybridagentupdaterconfiguration.md) | |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesPublishingProfile",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "hybridAgentUpdaterConfiguration": {"@odata.type": "microsoft.graph.hybridAgentUpdaterConfiguration"},
  "id": "String (identifier)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesPublishingProfile resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
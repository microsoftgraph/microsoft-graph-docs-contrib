---
title: "businessScenarioProperties resource type"
description: "**TODO: Add Description**"
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# businessScenarioProperties resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents scenario metadata for a [businessScenarioTask](../resources/businessscenariotask.md) object.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|externalBucketId|String|The identifier of the [bucketDefinition](../resources/plannerplanconfigurationbucketdefinition.md) configured in the [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) for the scenario. The task will be placed in the corresponding [plannerBucket](../resources/plannerbucket.md) in the target plan|
|externalContextId|String|Optional. The identifier of the context of the task. Context is an application controlled value, and tasks can be queried by their externalContextId.|
|externalObjectId|String|Application specified Identifier of the task. Every task for the same scenario must have a unique identifier specified for this property.|
|externalObjectVersion|String|Optional. Application specific version of the task. |
|webUrl|String|Optional. The URL to the application specific experience for this task.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.businessScenarioProperties"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.businessScenarioProperties",
  "externalObjectId": "String",
  "externalContextId": "String",
  "externalObjectVersion": "String",
  "webUrl": "String",
  "externalBucketId": "String"
}
```

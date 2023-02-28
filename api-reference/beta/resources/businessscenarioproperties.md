---
title: "businessScenarioProperties resource type"
description: "Represents scenario metadata for a businessScenarioTask object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# businessScenarioProperties resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents scenario metadata for a [businessScenarioTask](../resources/businessscenariotask.md) object.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|externalBucketId|String|The identifier for the [bucketDefinition](../resources/plannerplanconfigurationbucketdefinition.md) configured in the [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) for the scenario. The task will be placed in the corresponding [plannerBucket](../resources/plannerbucket.md) in the target plan. Required.|
|externalContextId|String|The identifier for the context of the task. Context is an application controlled value, and tasks can be queried by their **externalContextId**. Optional.|
|externalObjectId|String|Application-specific identifier for the task. Every task for the same scenario must have a unique identifier specified for this property. Required.|
|externalObjectVersion|String|Application-specific version of the task. Optional.|
|webUrl|String|The URL to the application-specific experience for this task. Optional.|

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
  "externalBucketId": "String",
  "externalContextId": "String",
  "externalObjectId": "String",
  "externalObjectVersion": "String",
  "webUrl": "String"
}
```

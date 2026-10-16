---
title: "creationInfo resource type"
description: "Read-only creation metadata for a plan, task, bucket, or dependency."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# creationInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **creationInfo** property of the [bucket](bucket.md) resource uses this type. The **creationInfo** property of the [dependency](dependency.md) resource uses this type. The **creationInfo** property of the [plan](plan.md) resource uses this type. The **creationInfo** property of the [task](task.md) resource uses this type.

Read-only creation metadata for a [plan](plan.md), [task](task.md), [bucket](bucket.md), or [dependency](dependency.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) that created the entity.|
|createdDateTime|DateTimeOffset|Date and time the entity was created.|
|externalId|String|Identifier of the entity in an external system, if it originated outside Planner.|
|externalUrl|String|URL of the entity in the external system, if applicable.|
|externalVersion|String|Version of the entity in the external system, if applicable.|
|scenarioId|String|Identifier of the scenario or workflow that created the entity.|
|scope|String|Scope the entity was created in.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.creationInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.creationInfo",
  "scenarioId": "String",
  "scope": "String",
  "externalId": "String",
  "externalVersion": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "externalUrl": "String"
}
```


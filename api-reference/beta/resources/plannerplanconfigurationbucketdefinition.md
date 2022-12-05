---
title: "plannerPlanConfigurationBucketDefinition resource type"
description: "Represents a bucket in a plannerPlanConfiguration."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# plannerPlanConfigurationBucketDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a bucket in a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|externalBucketId|String|Application-specified identifier of the bucket. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationBucketDefinition",
  "externalBucketId": "String"
}
```

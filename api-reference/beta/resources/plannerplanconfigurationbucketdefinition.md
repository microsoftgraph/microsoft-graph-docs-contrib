---
title: "plannerPlanConfigurationBucketDefinition resource type"
description: "Represents a bucket in a plannerPlanConfiguration."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: resourcePageType
ms.date: 07/22/2024
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

The following JSON representation shows the resource type.
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

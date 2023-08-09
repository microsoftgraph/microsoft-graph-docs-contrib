---
title: "plannerPlanConfigurationBucketLocalization resource type"
description: "Represents the localized name of a bucket in a plannerPlanConfigurationLocalization."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# plannerPlanConfigurationBucketLocalization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the localized name of a bucket in a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md).  

## Properties

|Property|Type|Description|
|:---|:---|:---|
|externalBucketId|String|Application-specified identifier of the bucket.|
|name|String|Name of the bucket.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationBucketLocalization",
  "externalBucketId": "String",
  "name": "String"
}
```

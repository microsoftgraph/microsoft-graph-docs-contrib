---
title: "plannerPlanConfigurationLocalization resource type"
description: "Represents the localized names for a plannerPlanConfiguration for a specific language."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: resourcePageType
ms.date: 07/24/2024
---

# plannerPlanConfigurationLocalization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the localized names for a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) for a specific language.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/plannerplanconfiguration-list-localizations.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) collection|Get a list of the [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) objects and their properties.|
|[Update](../api/plannerplanconfiguration-update.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Add, remove, or update a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) via the update of the plannerPlanConfiguration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|buckets|[plannerPlanConfigurationBucketLocalization](../resources/plannerplanconfigurationbucketlocalization.md) collection|Localized names for configured buckets in the plan configuration.|
|id|String|The unique identifier for the plan configuration location. Inherited from [entity](../resources/entity.md).|
|languageTag|String|The language code associated with the localized names in this object.|
|planTitle|String|Localized title of the plan.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerPlanConfigurationLocalization",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlanConfigurationLocalization",
  "buckets": [{"@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization"}],
  "id": "String (identifier)",
  "languageTag": "String",
  "planTitle": "String"
  
}
```

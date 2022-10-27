---
title: "plannerPlanConfigurationLocalization resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerPlanConfigurationLocalization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List plannerPlanConfigurationLocalizations](../api/plannerplanconfiguration-list-localizations.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) collection|Get a list of the [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) objects and their properties.|
|[Create plannerPlanConfigurationLocalization](../api/plannerplanconfiguration-post-localizations.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md)|Create a new [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object.|
|[Get plannerPlanConfigurationLocalization](../api/plannerplanconfigurationlocalization-get.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md)|Read the properties and relationships of a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object.|
|[Update plannerPlanConfigurationLocalization](../api/plannerplanconfigurationlocalization-update.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md)|Update the properties of a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object.|
|[Delete plannerPlanConfigurationLocalization](../api/plannerplanconfiguration-delete-localizations.md)|None|Delete a [plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|buckets|[plannerPlanConfigurationBucketLocalization](../resources/plannerplanconfigurationbucketlocalization.md) collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|languageTag|String|**TODO: Add Description**|
|planTitle|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "languageTag": "String",
  "planTitle": "String",
  "buckets": [
    {
      "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization"
    }
  ]
}
```


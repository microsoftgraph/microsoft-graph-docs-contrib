---
title: "plannerPlanConfigurationLocalization resource type"
description: "Represents the localized names for a plannerPlanConfiguration for a specific language."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# plannerPlanConfigurationLocalization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the localized names for a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) for a specific language.

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
|buckets|[plannerPlanConfigurationBucketLocalization](../resources/plannerplanconfigurationbucketlocalization.md) collection|Localized names for configured buckets in the plan configuration.|
|id|String|The unique identifier for the plan configuration location. Inherited from [entity](../resources/entity.md).|
|languageTag|String|The language code associated with the localized names in this object.|
|planTitle|String|Localized title of the plan.|

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
  "buckets": [{"@odata.type": "microsoft.graph.plannerPlanConfigurationBucketLocalization"}],
  "id": "String (identifier)",
  "languageTag": "String",
  "planTitle": "String"
  
}
```

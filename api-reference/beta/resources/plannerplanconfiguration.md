---
title: "plannerPlanConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerPlanConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration of [plannerPlans](../resources/plannerplan.md) created for a [businessScenario](../resources/businessscenario.md).


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get plannerPlanConfiguration](../api/plannerplanconfiguration-get.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Read the properties and relationships of a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object.|
|[Update plannerPlanConfiguration](../api/plannerplanconfiguration-update.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Update the properties of a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object.|
|[List localizations](../api/plannerplanconfiguration-list-localizations.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) collection|Get the plannerPlanConfigurationLocalization resources from the localizations navigation property.|
|[Create plannerPlanConfigurationLocalization](../api/plannerplanconfiguration-post-localizations.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md)|Create a new plannerPlanConfigurationLocalization object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|buckets|[plannerPlanConfigurationBucketDefinition](../resources/plannerplanconfigurationbucketdefinition.md) collection|List the buckets that should be created in the Plan.|
|createdBy|[identitySet](../resources/identityset.md)|Read-Only. The identity of the creator of the planConfiguation.|
|createdDateTime|DateTimeOffset|Read-Only. The date and time the planConfiguration was created.|
|defaultLanguage|String|The language code for the default language to be used for the names of the objects created for the Plan.|
|id|String|The identifier for the plan configuration. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Read-Only. The identity of the last modifier of the planConfiguration.|
|lastModifiedDateTime|DateTimeOffset|Read-Only. The date and time the planConfiguration was last modified.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|localizations|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) collection|Localized names for the Plan configuration|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerPlanConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlanConfiguration",
  "id": "String (identifier)",
  "defaultLanguage": "String",
  "buckets": [
    {
      "@odata.type": "microsoft.graph.plannerPlanConfigurationBucketDefinition"
    }
  ],
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```


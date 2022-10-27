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

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List plannerPlanConfigurations](../api/businessscenarioplanner-list-planconfiguration.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md) collection|Get a list of the [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) objects and their properties.|
|[Create plannerPlanConfiguration](../api/businessscenarioplanner-post-planconfiguration.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Create a new [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object.|
|[Get plannerPlanConfiguration](../api/plannerplanconfiguration-get.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Read the properties and relationships of a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object.|
|[Update plannerPlanConfiguration](../api/plannerplanconfiguration-update.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Update the properties of a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object.|
|[Delete plannerPlanConfiguration](../api/businessscenarioplanner-delete-planconfiguration.md)|None|Delete a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object.|
|[List localizations](../api/plannerplanconfiguration-list-localizations.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) collection|Get the plannerPlanConfigurationLocalization resources from the localizations navigation property.|
|[Create plannerPlanConfigurationLocalization](../api/plannerplanconfiguration-post-localizations.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md)|Create a new plannerPlanConfigurationLocalization object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|buckets|[plannerPlanConfigurationBucketDefinition](../resources/plannerplanconfigurationbucketdefinition.md) collection|**TODO: Add Description**|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|defaultLanguage|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|localizations|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) collection|**TODO: Add Description**|

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


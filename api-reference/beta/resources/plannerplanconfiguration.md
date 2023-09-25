---
title: "plannerPlanConfiguration resource type"
description: "Represents the configuration of plannerPlan resources created for a businessScenario."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# plannerPlanConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration of [plannerPlan](../resources/plannerplan.md) resources created for a [businessScenario](../resources/businessscenario.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get plannerPlanConfiguration](../api/plannerplanconfiguration-get.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Read the properties and relationships of a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object.|
|[Update plannerPlanConfiguration](../api/plannerplanconfiguration-update.md)|[plannerPlanConfiguration](../resources/plannerplanconfiguration.md)|Update the properties of a [plannerPlanConfiguration](../resources/plannerplanconfiguration.md) object for a [businessScenario](../resources/businessscenario.md). |
|[List localizations](../api/plannerplanconfiguration-list-localizations.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) collection|Get the plannerPlanConfigurationLocalization resources from the localizations navigation property.|
|[Create plannerPlanConfigurationLocalization](../api/plannerplanconfiguration-post-localizations.md)|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md)|Create a new plannerPlanConfigurationLocalization object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|buckets|[plannerPlanConfigurationBucketDefinition](../resources/plannerplanconfigurationbucketdefinition.md) collection|List the buckets that should be created in the plan.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the creator of the plan configuration.|
|createdDateTime|DateTimeOffset|The date and time when the plan configuration was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|defaultLanguage|String|The language code for the default language to be used for the names of the objects created for the plan.|
|id|String|The unique identifier for the plan configuration. Inherited from [entity](../resources/entity.md). |
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the user who last modified the plan configuration. |
|lastModifiedDateTime|DateTimeOffset|The date and time when the plan configuration was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|localizations|[plannerPlanConfigurationLocalization](../resources/plannerplanconfigurationlocalization.md) collection|Localized names for the plan configuration.|

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
  "buckets": [{"@odata.type": "microsoft.graph.plannerPlanConfigurationBucketDefinition"}],
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "defaultLanguage": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)"
}
```

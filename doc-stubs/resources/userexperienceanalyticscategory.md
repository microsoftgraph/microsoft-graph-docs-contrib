---
title: "userExperienceAnalyticsCategory resource type"
description: "The user experience analytics category entity contains the scores and insights for the various metrics of a category."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userExperienceAnalyticsCategory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The user experience analytics category entity contains the scores and insights for the various metrics of a category.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsCategories](../api/userexperienceanalyticscategory-list.md)|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md) collection|Get a list of the [userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md) objects and their properties.|
|[Create userExperienceAnalyticsCategory](../api/userexperienceanalyticscategory-create.md)|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md)|Create a new [userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md) object.|
|[Get userExperienceAnalyticsCategory](../api/userexperienceanalyticscategory-get.md)|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md)|Read the properties and relationships of a [userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md) object.|
|[Update userExperienceAnalyticsCategory](../api/userexperienceanalyticscategory-update.md)|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md)|Update the properties of a [userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md) object.|
|[Delete userExperienceAnalyticsCategory](../api/userexperienceanalyticscategory-delete.md)|None|Deletes a [userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|insights|[userExperienceAnalyticsInsight](../resources/userexperienceanalyticsinsight.md) collection|The insights for the user experience analytics category.|
|overallScore|Int32|The overall score of the user experience analytics category.|
|state|userExperienceAnalyticsHealthState|The current health state of the user experience analytics category. The possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|
|totalDevices|Int32|The total device count of the user experience analytics category.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|metricValues|[userExperienceAnalyticsMetric](../resources/userexperienceanalyticsmetric.md) collection|The metric values for the user experience analytics category.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsCategory",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsCategory",
  "id": "String (identifier)",
  "insights": [
    {
      "@odata.type": "microsoft.graph.userExperienceAnalyticsInsight"
    }
  ],
  "overallScore": "Integer",
  "state": "String",
  "totalDevices": "Integer"
}
```


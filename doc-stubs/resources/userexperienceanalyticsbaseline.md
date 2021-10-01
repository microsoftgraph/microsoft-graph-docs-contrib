---
title: "userExperienceAnalyticsBaseline resource type"
description: "The user experience analytics baseline entity contains baseline values against which to compare the user experience analytics scores."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userExperienceAnalyticsBaseline resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The user experience analytics baseline entity contains baseline values against which to compare the user experience analytics scores.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsBaselines](../api/userexperienceanalyticsbaseline-list.md)|[userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md) collection|Get a list of the [userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md) objects and their properties.|
|[Create userExperienceAnalyticsBaseline](../api/userexperienceanalyticsbaseline-create.md)|[userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md)|Create a new [userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md) object.|
|[Get userExperienceAnalyticsBaseline](../api/userexperienceanalyticsbaseline-get.md)|[userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md)|Read the properties and relationships of a [userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md) object.|
|[Update userExperienceAnalyticsBaseline](../api/userexperienceanalyticsbaseline-update.md)|[userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md)|Update the properties of a [userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md) object.|
|[Delete userExperienceAnalyticsBaseline](../api/userexperienceanalyticsbaseline-delete.md)|None|Deletes a [userExperienceAnalyticsBaseline](../resources/userexperienceanalyticsbaseline.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date the custom baseline was created.|
|displayName|String|The name of the user experience analytics baseline.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isBuiltIn|Boolean|Signifies if the current baseline is the commercial median baseline or a custom baseline.|
|overallScore|Int32|The overall score of the user experience analytics baseline.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appHealthMetrics|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md)|The user experience analytics app health metrics.|
|bestPracticesMetrics|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md)|The user experience analytics best practices metrics.|
|deviceBootPerformanceMetrics|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md)|The user experience analytics device boot performance metrics.|
|rebootAnalyticsMetrics|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md)|The user experience analytics reboot analytics metrics.|
|resourcePerformanceMetrics|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md)|The user experience analytics resource performance metrics.|
|workFromAnywhereMetrics|[userExperienceAnalyticsCategory](../resources/userexperienceanalyticscategory.md)|The user experience analytics work from anywhere metrics.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsBaseline",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBaseline",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "isBuiltIn": "Boolean",
  "overallScore": "Integer"
}
```


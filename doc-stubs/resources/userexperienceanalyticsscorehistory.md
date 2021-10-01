---
title: "userExperienceAnalyticsScoreHistory resource type"
description: "The user experience analytics device startup score history."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userExperienceAnalyticsScoreHistory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The user experience analytics device startup score history.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsScoreHistories](../api/userexperienceanalyticsscorehistory-list.md)|[userExperienceAnalyticsScoreHistory](../resources/userexperienceanalyticsscorehistory.md) collection|Get a list of the [userExperienceAnalyticsScoreHistory](../resources/userexperienceanalyticsscorehistory.md) objects and their properties.|
|[Create userExperienceAnalyticsScoreHistory](../api/userexperienceanalyticsscorehistory-create.md)|[userExperienceAnalyticsScoreHistory](../resources/userexperienceanalyticsscorehistory.md)|Create a new [userExperienceAnalyticsScoreHistory](../resources/userexperienceanalyticsscorehistory.md) object.|
|[Get userExperienceAnalyticsScoreHistory](../api/userexperienceanalyticsscorehistory-get.md)|[userExperienceAnalyticsScoreHistory](../resources/userexperienceanalyticsscorehistory.md)|Read the properties and relationships of a [userExperienceAnalyticsScoreHistory](../resources/userexperienceanalyticsscorehistory.md) object.|
|[Update userExperienceAnalyticsScoreHistory](../api/userexperienceanalyticsscorehistory-update.md)|[userExperienceAnalyticsScoreHistory](../resources/userexperienceanalyticsscorehistory.md)|Update the properties of a [userExperienceAnalyticsScoreHistory](../resources/userexperienceanalyticsscorehistory.md) object.|
|[Delete userExperienceAnalyticsScoreHistory](../api/userexperienceanalyticsscorehistory-delete.md)|None|Deletes a [userExperienceAnalyticsScoreHistory](../resources/userexperienceanalyticsscorehistory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appHealthOverallScore|Int32|The User experience analytics app health overall score.|
|appHealthTotalDevices|Int32|The total device count of the user experience analytics category app health.|
|coreBootScore|Int32|The user experience analytics device core boot score. Score will be in the range 0-100, 100 is the ideal score.|
|coreSigninScore|Int32|The User experience analytics device core sign-in score. Score will be in the range 0-100, 100 is the ideal score.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|overallScore|Int32|User experience analytics overall score. Score will be in the range 0-100, 100 is the ideal score. Valid values 0 to 100|
|recommendedSoftwareScore|Int32|The User experience analytics device core sign-in score. Score will be in the range 0-100, 100 is the ideal score.|
|recommendedSoftwareTotalDevices|Int32|The total device count of the user experience analytics category recommended software.|
|restartScore|Int32|Restart score. Score will be in the range 0-100, 100 is the ideal score, 0 indicates excessive restarts. Valid values 0 to 9999999|
|startupDateTime|DateTimeOffset|The user experience analytics device startup date time.|
|startupScore|Int32|User experience analytics device startup score. Score will be in the range 0-100, 100 is the ideal score.|
|startupTotalDevices|Int32|The total device count of the user experience analytics category startup performance.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsScoreHistory",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsScoreHistory",
  "id": "String (identifier)",
  "appHealthOverallScore": "Integer",
  "appHealthTotalDevices": "Integer",
  "coreBootScore": "Integer",
  "coreSigninScore": "Integer",
  "overallScore": "Integer",
  "recommendedSoftwareScore": "Integer",
  "recommendedSoftwareTotalDevices": "Integer",
  "restartScore": "Integer",
  "startupDateTime": "String (timestamp)",
  "startupScore": "Integer",
  "startupTotalDevices": "Integer"
}
```


---
title: "userExperienceAnalyticsScoreHistory resource type"
description: "The user experience analytics device startup score history."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsScoreHistory resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device startup score history.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsScoreHistories](../api/intune-devices-userexperienceanalyticsscorehistory-list.md)|[userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) collection|List properties and relationships of the [userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) objects.|
|[Get userExperienceAnalyticsScoreHistory](../api/intune-devices-userexperienceanalyticsscorehistory-get.md)|[userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md)|Read properties and relationships of the [userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) object.|
|[Create userExperienceAnalyticsScoreHistory](../api/intune-devices-userexperienceanalyticsscorehistory-create.md)|[userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md)|Create a new [userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) object.|
|[Delete userExperienceAnalyticsScoreHistory](../api/intune-devices-userexperienceanalyticsscorehistory-delete.md)|None|Deletes a [userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md).|
|[Update userExperienceAnalyticsScoreHistory](../api/intune-devices-userexperienceanalyticsscorehistory-update.md)|[userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md)|Update the properties of a [userExperienceAnalyticsScoreHistory](../resources/intune-devices-userexperienceanalyticsscorehistory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device startup process. Supports: $select, $OrderBy. Read-only.|
|startupDateTime|DateTimeOffset|The device startup date time. The value cannot be modified and is automatically populated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default.|
|overallScore|Int32|User experience analytics overall score. Score will be in the range 0-100, 100 is the ideal score. Valid values 0 to 100|
|startupScore|Int32|User experience analytics device startup score. Score will be in the range 0-100, 100 is the ideal score.|
|coreBootScore|Int32|The user experience analytics device core boot score. Score will be in the range 0-100, 100 is the ideal score.|
|coreSigninScore|Int32|The User experience analytics device core sign-in score. Score will be in the range 0-100, 100 is the ideal score.|
|recommendedSoftwareScore|Int32|The User experience analytics device core sign-in score. Score will be in the range 0-100, 100 is the ideal score.|
|appHealthOverallScore|Int32|The User experience analytics app health overall score.|
|workFromAnywhereScore|Int32|The User experience analytics work from anywhere score.|
|batteryHealthScore|Int32|The User experience analytics battery health score.|
|startupTotalDevices|Int32|The total device count of the user experience analytics category startup performance.|
|recommendedSoftwareTotalDevices|Int32|The total device count of the user experience analytics category recommended software.|
|appHealthTotalDevices|Int32|The total device count of the user experience analytics category app health.|
|workFromAnywhereTotalDevices|Int32|The total device count of the user experience analytics category work from anywhere.|
|batteryHealthTotalDevices|Int32|The total device count of the user experience analytics category battery health.|
|restartScore|Int32|Restart score. Score will be in the range 0-100, 100 is the ideal score, 0 indicates excessive restarts. Valid values 0 to 9999999|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsScoreHistory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsScoreHistory",
  "id": "String (identifier)",
  "startupDateTime": "String (timestamp)",
  "overallScore": 1024,
  "startupScore": 1024,
  "coreBootScore": 1024,
  "coreSigninScore": 1024,
  "recommendedSoftwareScore": 1024,
  "appHealthOverallScore": 1024,
  "workFromAnywhereScore": 1024,
  "batteryHealthScore": 1024,
  "startupTotalDevices": 1024,
  "recommendedSoftwareTotalDevices": 1024,
  "appHealthTotalDevices": 1024,
  "workFromAnywhereTotalDevices": 1024,
  "batteryHealthTotalDevices": 1024,
  "restartScore": 1024
}
```

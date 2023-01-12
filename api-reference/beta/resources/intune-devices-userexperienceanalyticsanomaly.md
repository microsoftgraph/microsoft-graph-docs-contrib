---
title: "userExperienceAnalyticsAnomaly resource type"
description: "The user experience analytics anomaly entity contains anomaly details."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsAnomaly resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics anomaly entity contains anomaly details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsAnomalies](../api/intune-devices-userexperienceanalyticsanomaly-list.md)|[userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md) collection|List properties and relationships of the [userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md) objects.|
|[Get userExperienceAnalyticsAnomaly](../api/intune-devices-userexperienceanalyticsanomaly-get.md)|[userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md)|Read properties and relationships of the [userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md) object.|
|[Create userExperienceAnalyticsAnomaly](../api/intune-devices-userexperienceanalyticsanomaly-create.md)|[userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md)|Create a new [userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md) object.|
|[Delete userExperienceAnalyticsAnomaly](../api/intune-devices-userexperienceanalyticsanomaly-delete.md)|None|Deletes a [userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md).|
|[Update userExperienceAnalyticsAnomaly](../api/intune-devices-userexperienceanalyticsanomaly-update.md)|[userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md)|Update the properties of a [userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the user experience analytics anomaly device object.|
|anomalyId|String|The unique identifier of the anomaly.|
|anomalyName|String|The name of the anomaly.|
|deviceImpactedCount|Int32|The number of devices impacted by the anomaly. Valid values -2147483648 to 2147483647|
|severity|[userExperienceAnalyticsAnomalySeverity](../resources/intune-devices-userexperienceanalyticsanomalyseverity.md)|The severity of the anomaly. Possible values are: high, medium, low, informational or other. Possible values are: `high`, `medium`, `low`, `informational`, `other`, `unknownFutureValue`.|
|state|[userExperienceAnalyticsAnomalyState](../resources/intune-devices-userexperienceanalyticsanomalystate.md)|The state of the anomaly. Possible values are: new, active, disabled, removed or other. Possible values are: `new`, `active`, `disabled`, `removed`, `other`, `unknownFutureValue`.|
|anomalyType|[userExperienceAnalyticsAnomalyType](../resources/intune-devices-userexperienceanalyticsanomalytype.md)|The category of the anomaly. Possible values are: device, application, stopError, driver or other. Possible values are: `device`, `application`, `stopError`, `driver`, `other`, `unknownFutureValue`.|
|anomalyFirstOccurrenceDateTime|DateTimeOffset|Indicates the first occurrence date and time for the anomaly.|
|anomalyLatestOccurrenceDateTime|DateTimeOffset|Indicates the latest occurrence date and time for the anomaly.|
|detectionModelId|String|The unique identifier of the anomaly detection model.|
|issueId|String|The unique identifier of the anomaly detection model.|
|assetName|String|The name of the application or module that caused the anomaly.|
|assetVersion|String|The version of the application or module that caused the anomaly.|
|assetPublisher|String|The publisher of the application or module that caused the anomaly.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAnomaly"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAnomaly",
  "id": "String (identifier)",
  "anomalyId": "String",
  "anomalyName": "String",
  "deviceImpactedCount": 1024,
  "severity": "String",
  "state": "String",
  "anomalyType": "String",
  "anomalyFirstOccurrenceDateTime": "String (timestamp)",
  "anomalyLatestOccurrenceDateTime": "String (timestamp)",
  "detectionModelId": "String",
  "issueId": "String",
  "assetName": "String",
  "assetVersion": "String",
  "assetPublisher": "String"
}
```

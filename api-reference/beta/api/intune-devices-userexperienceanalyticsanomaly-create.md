---
title: "Create userExperienceAnalyticsAnomaly"
description: "Create a new userExperienceAnalyticsAnomaly object."
author: "dougeby"
localization_priority: Normal
ms.prod: "Intune"
doc_type: apiPageType
---

# Create userExperienceAnalyticsAnomaly

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/userExperienceAnalyticsAnomaly
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the userExperienceAnalyticsAnomaly object.

The following table shows the properties that are required when you create the userExperienceAnalyticsAnomaly.

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



## Response
If successful, this method returns a `201 Created` response code and a [userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsAnomaly
Content-type: application/json
Content-length: 613

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAnomaly",
  "anomalyId": "Anomaly Id value",
  "anomalyName": "Anomaly Name value",
  "deviceImpactedCount": 3,
  "severity": "medium",
  "state": "active",
  "anomalyType": "application",
  "anomalyFirstOccurrenceDateTime": "2016-12-31T23:59:51.9264217-08:00",
  "anomalyLatestOccurrenceDateTime": "2016-12-31T23:59:05.0606868-08:00",
  "detectionModelId": "Detection Model Id value",
  "issueId": "Issue Id value",
  "assetName": "Asset Name value",
  "assetVersion": "Asset Version value",
  "assetPublisher": "Asset Publisher value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 662

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAnomaly",
  "id": "6b02c7d5-c7d5-6b02-d5c7-026bd5c7026b",
  "anomalyId": "Anomaly Id value",
  "anomalyName": "Anomaly Name value",
  "deviceImpactedCount": 3,
  "severity": "medium",
  "state": "active",
  "anomalyType": "application",
  "anomalyFirstOccurrenceDateTime": "2016-12-31T23:59:51.9264217-08:00",
  "anomalyLatestOccurrenceDateTime": "2016-12-31T23:59:05.0606868-08:00",
  "detectionModelId": "Detection Model Id value",
  "issueId": "Issue Id value",
  "assetName": "Asset Name value",
  "assetVersion": "Asset Version value",
  "assetPublisher": "Asset Publisher value"
}
```





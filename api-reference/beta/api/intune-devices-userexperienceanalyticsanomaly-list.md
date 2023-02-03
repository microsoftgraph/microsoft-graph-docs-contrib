---
title: "List userExperienceAnalyticsAnomalies"
description: "List properties and relationships of the userExperienceAnalyticsAnomaly objects."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# List userExperienceAnalyticsAnomalies

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md) objects.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/userExperienceAnalyticsAnomaly
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [userExperienceAnalyticsAnomaly](../resources/intune-devices-userexperienceanalyticsanomaly.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsAnomaly
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 755

{
  "value": [
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
  ]
}
```

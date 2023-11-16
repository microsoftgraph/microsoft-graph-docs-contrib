---
title: "List userExperienceAnalyticsAnomalyCorrelationGroupOverviews"
description: "List properties and relationships of the userExperienceAnalyticsAnomalyCorrelationGroupOverview objects."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# List userExperienceAnalyticsAnomalyCorrelationGroupOverviews

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md) objects.

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
GET /deviceManagement/userExperienceAnalyticsAnomalyCorrelationGroupOverview
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsAnomalyCorrelationGroupOverview
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 870

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.userExperienceAnalyticsAnomalyCorrelationGroupOverview",
      "id": "74f8f469-f469-74f8-69f4-f87469f4f874",
      "anomalyId": "Anomaly Id value",
      "correlationGroupId": "Correlation Group Id value",
      "correlationGroupFeatures": [
        {
          "@odata.type": "microsoft.graph.userExperienceAnalyticsAnomalyCorrelationGroupFeature",
          "deviceFeatureType": "model",
          "values": [
            "Values value"
          ]
        }
      ],
      "correlationGroupPrevalence": "medium",
      "correlationGroupPrevalencePercentage": 12.0,
      "totalDeviceCount": 0,
      "anomalyCorrelationGroupCount": 12,
      "correlationGroupDeviceCount": 11,
      "correlationGroupAnomalousDeviceCount": 4,
      "correlationGroupAtRiskDeviceCount": 1
    }
  ]
}
```

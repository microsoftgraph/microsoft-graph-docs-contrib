---
title: "List userExperienceAnalyticsModelScoreses"
description: "List properties and relationships of the userExperienceAnalyticsModelScores objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List userExperienceAnalyticsModelScoreses

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [userExperienceAnalyticsModelScores](../resources/intune-devices-userexperienceanalyticsmodelscores.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/userExperienceAnalyticsModelScores
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [userExperienceAnalyticsModelScores](../resources/intune-devices-userexperienceanalyticsmodelscores.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/userExperienceAnalyticsModelScores
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 540

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.userExperienceAnalyticsModelScores",
      "id": "f2c0f69c-f69c-f2c0-9cf6-c0f29cf6c0f2",
      "model": "Model value",
      "manufacturer": "Manufacturer value",
      "modelDeviceCount": 0,
      "endpointAnalyticsScore": 7.333333333333333,
      "startupPerformanceScore": 7.666666666666667,
      "appReliabilityScore": 6.333333333333333,
      "workFromAnywhereScore": 7.0,
      "batteryHealthScore": 6.0,
      "healthStatus": "insufficientData"
    }
  ]
}
```

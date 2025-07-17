---
title: "List userExperienceAnalyticsBatteryHealthModelPerformances"
description: "List properties and relationships of the userExperienceAnalyticsBatteryHealthModelPerformance objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List userExperienceAnalyticsBatteryHealthModelPerformances

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
GET /deviceManagement/userExperienceAnalyticsBatteryHealthModelPerformance
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsBatteryHealthModelPerformance
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 788

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthModelPerformance",
      "id": "0850afa4-afa4-0850-a4af-5008a4af5008",
      "activeDevices": 13,
      "model": "Model value",
      "manufacturer": "Manufacturer value",
      "deviceModelName": "Device Model Name value",
      "deviceManufacturerName": "Device Manufacturer Name value",
      "averageMaxCapacityPercentage": 12,
      "averageEstimatedRuntimeInMinutes": 0,
      "averageBatteryAgeInDays": 7,
      "meanFullBatteryDrainCount": 9,
      "medianMaxCapacityPercentage": 11,
      "medianEstimatedRuntimeInMinutes": 15,
      "medianFullBatteryDrainCount": 11,
      "modelBatteryHealthScore": 7,
      "modelHealthStatus": "insufficientData"
    }
  ]
}
```
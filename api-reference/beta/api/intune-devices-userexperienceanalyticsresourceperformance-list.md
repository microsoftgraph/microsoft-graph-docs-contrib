---
title: "List userExperienceAnalyticsResourcePerformances"
description: "List properties and relationships of the userExperienceAnalyticsResourcePerformance objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List userExperienceAnalyticsResourcePerformances

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md) objects.

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
GET /deviceManagement/userExperienceAnalyticsResourcePerformance
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [userExperienceAnalyticsResourcePerformance](../resources/intune-devices-userexperienceanalyticsresourceperformance.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsResourcePerformance
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 979

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.userExperienceAnalyticsResourcePerformance",
      "id": "d34d78e8-78e8-d34d-e878-4dd3e8784dd3",
      "deviceId": "Device Id value",
      "deviceName": "Device Name value",
      "model": "Model value",
      "deviceCount": 11,
      "manufacturer": "Manufacturer value",
      "cpuSpikeTimePercentage": 7.333333333333333,
      "ramSpikeTimePercentage": 7.333333333333333,
      "cpuSpikeTimeScore": 1,
      "cpuSpikeTimePercentageThreshold": 10.333333333333334,
      "ramSpikeTimeScore": 1,
      "ramSpikeTimePercentageThreshold": 10.333333333333334,
      "deviceResourcePerformanceScore": 14,
      "averageSpikeTimeScore": 5,
      "machineType": "physical",
      "cpuDisplayName": "Cpu Display Name value",
      "totalProcessorCoreCount": 7,
      "cpuClockSpeedInMHz": 6.0,
      "totalRamInMB": 4.0,
      "diskType": "hdd",
      "healthStatus": "insufficientData"
    }
  ]
}
```
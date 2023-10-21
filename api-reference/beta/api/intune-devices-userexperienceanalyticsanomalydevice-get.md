---
title: "Get userExperienceAnalyticsAnomalyDevice"
description: "Read properties and relationships of the userExperienceAnalyticsAnomalyDevice object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get userExperienceAnalyticsAnomalyDevice

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) object.

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
GET /deviceManagement/userExperienceAnalyticsAnomalyDevice/{userExperienceAnalyticsAnomalyDeviceId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsAnomalyDevice/{userExperienceAnalyticsAnomalyDeviceId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 691

{
  "value": {
    "@odata.type": "#microsoft.graph.userExperienceAnalyticsAnomalyDevice",
    "id": "c81fdac9-dac9-c81f-c9da-1fc8c9da1fc8",
    "deviceId": "Device Id value",
    "deviceName": "Device Name value",
    "deviceModel": "Device Model value",
    "deviceManufacturer": "Device Manufacturer value",
    "osName": "Os Name value",
    "osVersion": "Os Version value",
    "anomalyId": "Anomaly Id value",
    "anomalyOnDeviceFirstOccurrenceDateTime": "2017-01-01T00:00:47.4723614-08:00",
    "anomalyOnDeviceLatestOccurrenceDateTime": "2016-12-31T23:59:20.6899849-08:00",
    "correlationGroupId": "Correlation Group Id value",
    "deviceStatus": "affected"
  }
}
```

---
title: "Update userExperienceAnalyticsAnomalyDevice"
description: "Update the properties of a userExperienceAnalyticsAnomalyDevice object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update userExperienceAnalyticsAnomalyDevice

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) object.

## Permissions
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
PATCH /deviceManagement/userExperienceAnalyticsAnomalyDevice/{userExperienceAnalyticsAnomalyDeviceId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) object.

The following table shows the properties that are required when you create the [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the user experience analytics anomaly device object.|
|deviceId|String|The unique identifier of the device.|
|deviceName|String|The name of the device.|
|deviceModel|String|The model name of the device.|
|deviceManufacturer|String|The manufacturer name of the device.|
|osName|String|The name of the OS installed on the device.|
|osVersion|String|The OS version installed on the device.|
|anomalyId|String|The unique identifier of the anomaly.|
|anomalyOnDeviceFirstOccurrenceDateTime|DateTimeOffset|Indicates the first occurance date and time for the anomaly on the device.|
|anomalyOnDeviceLatestOccurrenceDateTime|DateTimeOffset|Indicates the latest occurance date and time for the anomaly on the device.|



## Response
If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsAnomalyDevice/{userExperienceAnalyticsAnomalyDeviceId}
Content-type: application/json
Content-length: 511

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAnomalyDevice",
  "deviceId": "Device Id value",
  "deviceName": "Device Name value",
  "deviceModel": "Device Model value",
  "deviceManufacturer": "Device Manufacturer value",
  "osName": "Os Name value",
  "osVersion": "Os Version value",
  "anomalyId": "Anomaly Id value",
  "anomalyOnDeviceFirstOccurrenceDateTime": "2017-01-01T00:00:47.4723614-08:00",
  "anomalyOnDeviceLatestOccurrenceDateTime": "2016-12-31T23:59:20.6899849-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 560

{
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
  "anomalyOnDeviceLatestOccurrenceDateTime": "2016-12-31T23:59:20.6899849-08:00"
}
```

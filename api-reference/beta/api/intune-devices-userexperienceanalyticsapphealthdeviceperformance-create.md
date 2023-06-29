---
title: "Create userExperienceAnalyticsAppHealthDevicePerformance"
description: "Create a new userExperienceAnalyticsAppHealthDevicePerformance object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create userExperienceAnalyticsAppHealthDevicePerformance

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [userExperienceAnalyticsAppHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformance.md) object.

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
POST /deviceManagement/userExperienceAnalyticsAppHealthDevicePerformance
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the userExperienceAnalyticsAppHealthDevicePerformance object.

The following table shows the properties that are required when you create the userExperienceAnalyticsAppHealthDevicePerformance.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device performance object. Supports: $select, $OrderBy. Read-only.|
|deviceModel|String|The model name of the device. Supports: $select, $OrderBy. Read-only.|
|deviceManufacturer|String|The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.|
|appCrashCount|Int32|The number of application crashes for the device. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647|
|crashedAppCount|Int32|The number of distinct application crashes for the device. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647|
|appHangCount|Int32|The number of application hangs for the device. Valid values 0 to 2147483647. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647|
|processedDateTime|DateTimeOffset|The date and time when the statistics were last computed. The value cannot be modified and is automatically populated when the statistics are computed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2022 would look like this: '2022-01-01T00:00:00Z'. Returned by default. Read-only.|
|meanTimeToFailureInMinutes|Int32|The mean time to failure for the application in minutes. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647|
|deviceAppHealthScore|Double|The application health score of the device. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|deviceAppHealthStatus|String|The overall app health status of the device.|
|healthStatus|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The health state of the user experience analytics device. Possible values are: unknown, insufficientData, needsAttention, meetingGoals. Unknown by default. Supports: $filter, $select, $OrderBy. Read-only. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`, `unknownFutureValue`.|
|deviceId|String|The Intune device id of the device. Supports: $select, $OrderBy. Read-only.|
|deviceDisplayName|String|The name of the device. Supports: $select, $OrderBy. Read-only.|



## Response
If successful, this method returns a `201 Created` response code and a [userExperienceAnalyticsAppHealthDevicePerformance](../resources/intune-devices-userexperienceanalyticsapphealthdeviceperformance.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsAppHealthDevicePerformance
Content-type: application/json
Content-length: 590

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthDevicePerformance",
  "deviceModel": "Device Model value",
  "deviceManufacturer": "Device Manufacturer value",
  "appCrashCount": 13,
  "crashedAppCount": 15,
  "appHangCount": 12,
  "processedDateTime": "2017-01-01T00:03:22.2339319-08:00",
  "meanTimeToFailureInMinutes": 10,
  "deviceAppHealthScore": 6.666666666666667,
  "deviceAppHealthStatus": "Device App Health Status value",
  "healthStatus": "insufficientData",
  "deviceId": "Device Id value",
  "deviceDisplayName": "Device Display Name value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 639

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthDevicePerformance",
  "id": "2c651499-1499-2c65-9914-652c9914652c",
  "deviceModel": "Device Model value",
  "deviceManufacturer": "Device Manufacturer value",
  "appCrashCount": 13,
  "crashedAppCount": 15,
  "appHangCount": 12,
  "processedDateTime": "2017-01-01T00:03:22.2339319-08:00",
  "meanTimeToFailureInMinutes": 10,
  "deviceAppHealthScore": 6.666666666666667,
  "deviceAppHealthStatus": "Device App Health Status value",
  "healthStatus": "insufficientData",
  "deviceId": "Device Id value",
  "deviceDisplayName": "Device Display Name value"
}
```

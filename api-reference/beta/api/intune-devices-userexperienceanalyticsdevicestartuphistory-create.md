---
title: "Create userExperienceAnalyticsDeviceStartupHistory"
description: "Create a new userExperienceAnalyticsDeviceStartupHistory object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create userExperienceAnalyticsDeviceStartupHistory

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [userExperienceAnalyticsDeviceStartupHistory](../resources/intune-devices-userexperienceanalyticsdevicestartuphistory.md) object.

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
POST /deviceManagement/userExperienceAnalyticsDeviceStartupHistory
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the userExperienceAnalyticsDeviceStartupHistory object.

The following table shows the properties that are required when you create the userExperienceAnalyticsDeviceStartupHistory.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device startup history. Supports: $select, $OrderBy. Read-only.|
|deviceId|String|The Intune device id of the device. Supports: $select, $OrderBy. Read-only.|
|startTime|DateTimeOffset|The device boot start time. The value cannot be modified and is automatically populated when the device performs a reboot. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2022 would look like this: '2022-01-01T00:00:00Z'. Returned by default. Read-only.|
|coreBootTimeInMs|Int32|The device core boot time in milliseconds. Supports: $select, $OrderBy. Read-only.|
|groupPolicyBootTimeInMs|Int32|The impact of device group policy client on boot time in milliseconds. Supports: $select, $OrderBy. Read-only.|
|featureUpdateBootTimeInMs|Int32|The impact of device feature updates on boot time in milliseconds. Supports: $select, $OrderBy. Read-only.|
|totalBootTimeInMs|Int32|The device total boot time in milliseconds. Supports: $select, $OrderBy. Read-only.|
|groupPolicyLoginTimeInMs|Int32|The impact of device group policy client on login time in milliseconds. Supports: $select, $OrderBy. Read-only.|
|coreLoginTimeInMs|Int32|The device core login time in milliseconds. Supports: $select, $OrderBy. Read-only.|
|responsiveDesktopTimeInMs|Int32|The time for desktop to become responsive during login process in milliseconds. Supports: $select, $OrderBy. Read-only.|
|totalLoginTimeInMs|Int32|The device total login time in milliseconds. Supports: $select, $OrderBy. Read-only.|
|isFirstLogin|Boolean|When TRUE, indicates the device login is the first login after a reboot. When FALSE, indicates the device login is not the first login after a reboot. Supports: $select, $OrderBy. Read-only.|
|isFeatureUpdate|Boolean|When TRUE, indicates the device boot record is associated with feature updates. When FALSE, indicates the device boot record is not associated with feature updates. Supports: $select, $OrderBy. Read-only.|
|operatingSystemVersion|String|The user experience analytics device boot record's operating system version. Supports: $select, $OrderBy. Read-only.|
|restartCategory|[userExperienceAnalyticsOperatingSystemRestartCategory](../resources/intune-devices-userexperienceanalyticsoperatingsystemrestartcategory.md)|OS restart category. Possible values are: unknown, restartWithUpdate, restartWithoutUpdate, blueScreen, shutdownWithUpdate, shutdownWithoutUpdate, longPowerButtonPress, bootError, update. Unknown by default. Supports: $select, $OrderBy. Read-only. Possible values are: `unknown`, `restartWithUpdate`, `restartWithoutUpdate`, `blueScreen`, `shutdownWithUpdate`, `shutdownWithoutUpdate`, `longPowerButtonPress`, `bootError`, `update`, `unknownFutureValue`.|
|restartStopCode|String|OS restart stop code. This shows the bug check code which can be used to look up the blue screen reason. Supports: $select, $OrderBy. Read-only.|
|restartFaultBucket|String|OS restart fault bucket. The fault bucket is used to find additional information about a system crash. Supports: $select, $OrderBy. Read-only.|



## Response
If successful, this method returns a `201 Created` response code and a [userExperienceAnalyticsDeviceStartupHistory](../resources/intune-devices-userexperienceanalyticsdevicestartuphistory.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsDeviceStartupHistory
Content-type: application/json
Content-length: 680

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceStartupHistory",
  "deviceId": "Device Id value",
  "startTime": "2017-01-01T00:03:29.2730865-08:00",
  "coreBootTimeInMs": 0,
  "groupPolicyBootTimeInMs": 7,
  "featureUpdateBootTimeInMs": 9,
  "totalBootTimeInMs": 1,
  "groupPolicyLoginTimeInMs": 8,
  "coreLoginTimeInMs": 1,
  "responsiveDesktopTimeInMs": 9,
  "totalLoginTimeInMs": 2,
  "isFirstLogin": true,
  "isFeatureUpdate": true,
  "operatingSystemVersion": "Operating System Version value",
  "restartCategory": "restartWithUpdate",
  "restartStopCode": "Restart Stop Code value",
  "restartFaultBucket": "Restart Fault Bucket value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 729

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceStartupHistory",
  "id": "13357123-7123-1335-2371-351323713513",
  "deviceId": "Device Id value",
  "startTime": "2017-01-01T00:03:29.2730865-08:00",
  "coreBootTimeInMs": 0,
  "groupPolicyBootTimeInMs": 7,
  "featureUpdateBootTimeInMs": 9,
  "totalBootTimeInMs": 1,
  "groupPolicyLoginTimeInMs": 8,
  "coreLoginTimeInMs": 1,
  "responsiveDesktopTimeInMs": 9,
  "totalLoginTimeInMs": 2,
  "isFirstLogin": true,
  "isFeatureUpdate": true,
  "operatingSystemVersion": "Operating System Version value",
  "restartCategory": "restartWithUpdate",
  "restartStopCode": "Restart Stop Code value",
  "restartFaultBucket": "Restart Fault Bucket value"
}
```

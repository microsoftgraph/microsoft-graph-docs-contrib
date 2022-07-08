---
title: "Update userExperienceAnalyticsBatteryHealthOsPerformance"
description: "Update the properties of a userExperienceAnalyticsBatteryHealthOsPerformance object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update userExperienceAnalyticsBatteryHealthOsPerformance

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md) object.

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
PATCH /deviceManagement/userExperienceAnalyticsBatteryHealthOsPerformance/{userExperienceAnalyticsBatteryHealthOsPerformanceId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md) object.

The following table shows the properties that are required when you create the [userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics battery health os performance object.|
|activeDevices|Int32|Number of active devices for that os version. Valid values -2147483648 to 2147483647|
|osVersion|String|Version of the operating system.|
|osBuildNumber|String|Build number of the operating system.|
|averageMaxCapacityPercentage|Int32|The mean of the maximum capacity for all devices running a particular operating system version. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values -2147483648 to 2147483647|
|averageEstimatedRuntimeInMinutes|Int32|The mean of the estimated runtimes on full charge for all devices running a particular operating system version. Unit in minutes. Valid values -2147483648 to 2147483647|
|averageBatteryAgeInDays|Int32|The mean of the battery age for all devices running a particular operating system version in a tenant. Unit in days. Valid values -2147483648 to 2147483647|



## Response
If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsBatteryHealthOsPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthosperformance.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsBatteryHealthOsPerformance/{userExperienceAnalyticsBatteryHealthOsPerformanceId}
Content-type: application/json
Content-length: 310

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthOsPerformance",
  "activeDevices": 13,
  "osVersion": "Os Version value",
  "osBuildNumber": "Os Build Number value",
  "averageMaxCapacityPercentage": 12,
  "averageEstimatedRuntimeInMinutes": 0,
  "averageBatteryAgeInDays": 7
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 359

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthOsPerformance",
  "id": "9fc871ad-71ad-9fc8-ad71-c89fad71c89f",
  "activeDevices": 13,
  "osVersion": "Os Version value",
  "osBuildNumber": "Os Build Number value",
  "averageMaxCapacityPercentage": 12,
  "averageEstimatedRuntimeInMinutes": 0,
  "averageBatteryAgeInDays": 7
}
```





---
title: "Update userExperienceAnalyticsBatteryHealthAppImpact"
description: "Update the properties of a userExperienceAnalyticsBatteryHealthAppImpact object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update userExperienceAnalyticsBatteryHealthAppImpact

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md) object.

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
PATCH /deviceManagement/userExperienceAnalyticsBatteryHealthAppImpact/{userExperienceAnalyticsBatteryHealthAppImpactId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md) object.

The following table shows the properties that are required when you create the [userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics battery app impact object.|
|activeDevices|Int32|Number of active devices for using that app over a 14-day period. Valid values -2147483648 to 2147483647|
|appName|String|App name. Eg: oltk.exe|
|appDisplayName|String|User friendly display name for the app. Eg: Outlook|
|appPublisher|String|App publisher. Eg: Microsoft Corporation|
|isForegroundApp|Boolean|true if the user had active interaction with the app.|
|batteryUsagePercentage|Double|The percent of total battery power used by this application when the device was not plugged into AC power, over 14 days computed across all devices in the tenant. Unit in percentage. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|



## Response
If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsBatteryHealthAppImpact/{userExperienceAnalyticsBatteryHealthAppImpactId}
Content-type: application/json
Content-length: 308

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthAppImpact",
  "activeDevices": 13,
  "appName": "App Name value",
  "appDisplayName": "App Display Name value",
  "appPublisher": "App Publisher value",
  "isForegroundApp": true,
  "batteryUsagePercentage": 7.333333333333333
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 357

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthAppImpact",
  "id": "d2a9c89a-c89a-d2a9-9ac8-a9d29ac8a9d2",
  "activeDevices": 13,
  "appName": "App Name value",
  "appDisplayName": "App Display Name value",
  "appPublisher": "App Publisher value",
  "isForegroundApp": true,
  "batteryUsagePercentage": 7.333333333333333
}
```







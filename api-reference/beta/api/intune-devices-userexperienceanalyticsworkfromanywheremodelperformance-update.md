---
title: "Update userExperienceAnalyticsWorkFromAnywhereModelPerformance"
description: "Update the properties of a userExperienceAnalyticsWorkFromAnywhereModelPerformance object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update userExperienceAnalyticsWorkFromAnywhereModelPerformance

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md) object.

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
PATCH /deviceManagement/userExperienceAnalyticsWorkFromAnywhereModelPerformance/{userExperienceAnalyticsWorkFromAnywhereModelPerformanceId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md) object.

The following table shows the properties that are required when you create the [userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the work from anywhere model performance object. Supports: $select, $OrderBy. Read-only.|
|model|String|The model name of the device. Supports: $select, $OrderBy. Read-only.|
|manufacturer|String|The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.|
|modelDeviceCount|Int32|The devices count for the model. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647|
|workFromAnywhereScore|Double|The work from anywhere score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|windowsScore|Double|The window score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|cloudManagementScore|Double|The cloud management score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|cloudIdentityScore|Double|The cloud identity score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|cloudProvisioningScore|Double|The cloud provisioning score of the device model.  Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|healthStatus|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The health state of the user experience analytics work from anywhere device model. Possible values are: unknown, insufficientData, needsAttention, meetingGoals. Unknown by default. Supports: $select, $OrderBy. Read-only. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`, `unknownFutureValue`.|



## Response
If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsWorkFromAnywhereModelPerformance](../resources/intune-devices-userexperienceanalyticsworkfromanywheremodelperformance.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsWorkFromAnywhereModelPerformance/{userExperienceAnalyticsWorkFromAnywhereModelPerformanceId}
Content-type: application/json
Content-length: 411

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereModelPerformance",
  "model": "Model value",
  "manufacturer": "Manufacturer value",
  "modelDeviceCount": 0,
  "workFromAnywhereScore": 7.0,
  "windowsScore": 4.0,
  "cloudManagementScore": 6.666666666666667,
  "cloudIdentityScore": 6.0,
  "cloudProvisioningScore": 7.333333333333333,
  "healthStatus": "insufficientData"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 460

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereModelPerformance",
  "id": "7ec79407-9407-7ec7-0794-c77e0794c77e",
  "model": "Model value",
  "manufacturer": "Manufacturer value",
  "modelDeviceCount": 0,
  "workFromAnywhereScore": 7.0,
  "windowsScore": 4.0,
  "cloudManagementScore": 6.666666666666667,
  "cloudIdentityScore": 6.0,
  "cloudProvisioningScore": 7.333333333333333,
  "healthStatus": "insufficientData"
}
```

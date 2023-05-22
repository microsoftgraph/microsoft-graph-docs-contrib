---
title: "Update hardwareConfigurationRunSummary"
description: "Update the properties of a hardwareConfigurationRunSummary object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update hardwareConfigurationRunSummary

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [hardwareConfigurationRunSummary](../resources/intune-deviceconfig-hardwareconfigurationrunsummary.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/hardwareConfigurations/{hardwareConfigurationId}/runSummary
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [hardwareConfigurationRunSummary](../resources/intune-deviceconfig-hardwareconfigurationrunsummary.md) object.

The following table shows the properties that are required when you create the [hardwareConfigurationRunSummary](../resources/intune-deviceconfig-hardwareconfigurationrunsummary.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the hardware configuration run summary entity. This property is read-only.|
|successfulDeviceCount|Int32|Number of devices for which hardware configured without any issue|
|failedDeviceCount|Int32|Number of devices for which hardware configuration found an issue|
|pendingDeviceCount|Int32|Number of devices for which hardware configuration is in pending state|
|errorDeviceCount|Int32|Number of devices for which hardware configuration state is error|
|notApplicableDeviceCount|Int32|Number of devices for which hardware configuration state is not applicable|
|unknownDeviceCount|Int32|Number of devices for which hardware configuration state is unknown|
|successfulUserCount|Int32|Number of users for which hardware configured without any issue|
|failedUserCount|Int32|Number of users for which hardware configuration found an issue|
|pendingUserCount|Int32|Number of users for which hardware configuration is in pending state|
|errorUserCount|Int32|Number of users for which hardware configuration state is error|
|notApplicableUserCount|Int32|Number of users for which hardware configuration state is not applicable|
|unknownUserCount|Int32|Number of users for which hardware configuration state is unknown|
|lastRunDateTime|DateTimeOffset|Last run time for the configuration across all devices|



## Response
If successful, this method returns a `200 OK` response code and an updated [hardwareConfigurationRunSummary](../resources/intune-deviceconfig-hardwareconfigurationrunsummary.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/hardwareConfigurations/{hardwareConfigurationId}/runSummary
Content-type: application/json
Content-length: 469

{
  "@odata.type": "#microsoft.graph.hardwareConfigurationRunSummary",
  "successfulDeviceCount": 5,
  "failedDeviceCount": 1,
  "pendingDeviceCount": 2,
  "errorDeviceCount": 0,
  "notApplicableDeviceCount": 8,
  "unknownDeviceCount": 2,
  "successfulUserCount": 3,
  "failedUserCount": 15,
  "pendingUserCount": 0,
  "errorUserCount": 14,
  "notApplicableUserCount": 6,
  "unknownUserCount": 0,
  "lastRunDateTime": "2016-12-31T23:57:28.499537-08:00"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 518

{
  "@odata.type": "#microsoft.graph.hardwareConfigurationRunSummary",
  "id": "76b964f2-64f2-76b9-f264-b976f264b976",
  "successfulDeviceCount": 5,
  "failedDeviceCount": 1,
  "pendingDeviceCount": 2,
  "errorDeviceCount": 0,
  "notApplicableDeviceCount": 8,
  "unknownDeviceCount": 2,
  "successfulUserCount": 3,
  "failedUserCount": 15,
  "pendingUserCount": 0,
  "errorUserCount": 14,
  "notApplicableUserCount": 6,
  "unknownUserCount": 0,
  "lastRunDateTime": "2016-12-31T23:57:28.499537-08:00"
}
```

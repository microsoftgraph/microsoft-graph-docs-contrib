---
title: "Create hardwareConfigurationUserState"
description: "Create a new hardwareConfigurationUserState object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create hardwareConfigurationUserState

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md) object.

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
POST /deviceManagement/hardwareConfigurations/{hardwareConfigurationId}/userRunStates
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the hardwareConfigurationUserState object.

The following table shows the properties that are required when you create the hardwareConfigurationUserState.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the hardware configuration script user state entity. This property is read-only.|
|upn|String|User Principal Name (UPN).|
|userEmail|String|User Email address.|
|userName|String|User name|
|lastStateUpdateDateTime|DateTimeOffset|Last timestamp when the hardware configuration executed|
|successfulDeviceCount|Int32|Success device count for specific user.|
|failedDeviceCount|Int32|Failed device count for specific user.|
|pendingDeviceCount|Int32|Pending device count for specific user.|
|errorDeviceCount|Int32|Error device count for specific user.|
|notApplicableDeviceCount|Int32|Not applicable device count for specific user.|
|unknownDeviceCount|Int32|Unknown device count for specific user.|



## Response
If successful, this method returns a `201 Created` response code and a [hardwareConfigurationUserState](../resources/intune-deviceconfig-hardwareconfigurationuserstate.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/hardwareConfigurations/{hardwareConfigurationId}/userRunStates
Content-type: application/json
Content-length: 406

{
  "@odata.type": "#microsoft.graph.hardwareConfigurationUserState",
  "upn": "Upn value",
  "userEmail": "User Email value",
  "userName": "User Name value",
  "lastStateUpdateDateTime": "2017-01-01T00:02:58.4418045-08:00",
  "successfulDeviceCount": 5,
  "failedDeviceCount": 1,
  "pendingDeviceCount": 2,
  "errorDeviceCount": 0,
  "notApplicableDeviceCount": 8,
  "unknownDeviceCount": 2
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 455

{
  "@odata.type": "#microsoft.graph.hardwareConfigurationUserState",
  "id": "303ad215-d215-303a-15d2-3a3015d23a30",
  "upn": "Upn value",
  "userEmail": "User Email value",
  "userName": "User Name value",
  "lastStateUpdateDateTime": "2017-01-01T00:02:58.4418045-08:00",
  "successfulDeviceCount": 5,
  "failedDeviceCount": 1,
  "pendingDeviceCount": 2,
  "errorDeviceCount": 0,
  "notApplicableDeviceCount": 8,
  "unknownDeviceCount": 2
}
```

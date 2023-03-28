---
title: "Create hardwareConfigurationDeviceState"
description: "Create a new hardwareConfigurationDeviceState object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create hardwareConfigurationDeviceState

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md) object.

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
POST /deviceManagement/hardwareConfigurations/{hardwareConfigurationId}/deviceRunStates
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the hardwareConfigurationDeviceState object.

The following table shows the properties that are required when you create the hardwareConfigurationDeviceState.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the hardware configuration script device state entity. This property is read-only.|
|deviceName|String|The name of the device|
|osVersion|String|Operating system version of the device (E.g. 10.0.19042.1165, 10.0.19042.1288 etc.)|
|upn|String|User Principal Name (UPN).|
|internalVersion|Int32|The Policy internal version|
|lastStateUpdateDateTime|DateTimeOffset|The last timestamp of when the hardware configuration executed|
|configurationState|[runState](../resources/intune-shared-runstate.md)|Configuration state from the lastest hardware configuration execution. Possible values are: `unknown`, `success`, `fail`, `scriptError`, `pending`, `notApplicable`.|
|configurationOutput|String|Output of the hardware configuration execution|
|configurationError|String|Error from the hardware configuration execution|



## Response
If successful, this method returns a `201 Created` response code and a [hardwareConfigurationDeviceState](../resources/intune-deviceconfig-hardwareconfigurationdevicestate.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/hardwareConfigurations/{hardwareConfigurationId}/deviceRunStates
Content-type: application/json
Content-length: 410

{
  "@odata.type": "#microsoft.graph.hardwareConfigurationDeviceState",
  "deviceName": "Device Name value",
  "osVersion": "Os Version value",
  "upn": "Upn value",
  "internalVersion": 15,
  "lastStateUpdateDateTime": "2017-01-01T00:02:58.4418045-08:00",
  "configurationState": "success",
  "configurationOutput": "Configuration Output value",
  "configurationError": "Configuration Error value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 459

{
  "@odata.type": "#microsoft.graph.hardwareConfigurationDeviceState",
  "id": "74b9fcd8-fcd8-74b9-d8fc-b974d8fcb974",
  "deviceName": "Device Name value",
  "osVersion": "Os Version value",
  "upn": "Upn value",
  "internalVersion": 15,
  "lastStateUpdateDateTime": "2017-01-01T00:02:58.4418045-08:00",
  "configurationState": "success",
  "configurationOutput": "Configuration Output value",
  "configurationError": "Configuration Error value"
}
```

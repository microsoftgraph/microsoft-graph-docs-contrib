---
title: "Update deviceQueryResult"
description: "Update the properties of a deviceQueryResult object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceQueryResult

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceQueryResult](../resources/intune-devices-devicequeryresult.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
PATCH /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/queryResults/{deviceQueryResultId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceQueryResult](../resources/intune-devices-devicequeryresult.md) object.

The following table shows the properties that are required when you create the [deviceQueryResult](../resources/intune-devices-devicequeryresult.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier (ID) of an Intune Pivot device query.|
|status|[deviceQueryResultStatus](../resources/intune-devices-devicequeryresultstatus.md)|Indicates present status of an Intune Pivot device query. This property is read-only. Possible values are: `created`, `notified`, `pending`, `timedOut`, `internalServiceError`, `successful`, `failed`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|Indicates creation time of an Intune Pivot device query. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|Last update time of an Intune Pivot device query. This property is read-only.|
|returnCode|Int32|Returned error code captured by an Intune Pivot device query. Valid values -2147483648 to 2147483647. This property is read-only.|
|errorMessage|String|Returned error message captured by an Intune Pivot device query. This property is read-only.|
|results|String|Results of Intune Pivot device query. This property is read-only.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceQueryResult](../resources/intune-devices-devicequeryresult.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/queryResults/{deviceQueryResultId}
Content-type: application/json
Content-length: 178

{
  "@odata.type": "#microsoft.graph.deviceQueryResult",
  "status": "notified",
  "returnCode": 10,
  "errorMessage": "Error Message value",
  "results": "Results value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 350

{
  "@odata.type": "#microsoft.graph.deviceQueryResult",
  "id": "71f84a70-4a70-71f8-704a-f871704af871",
  "status": "notified",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "returnCode": 10,
  "errorMessage": "Error Message value",
  "results": "Results value"
}
```

---
title: "retrieveDeviceLogCollectionRequests function"
description: "Intune Devices Manageddevice Retrievedevicelogcollectionrequests Api ."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: apiPageType
---

# retrieveDeviceLogCollectionRequests function

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementManagedDevices.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementManagedDevices.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/managedDevices/{managedDeviceId}/retrieveDeviceLogCollectionRequests
GET /deviceManagement/comanagedDevices/{managedDeviceId}/retrieveDeviceLogCollectionRequests
GET /deviceManagement/deviceHealthScripts/{deviceHealthScriptId}/deviceRunStates/{deviceHealthScriptDeviceStateId}/managedDevice/retrieveDeviceLogCollectionRequests
GET /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/retrieveDeviceLogCollectionRequests
GET /deviceManagement/deviceComplianceScripts/{deviceComplianceScriptId}/deviceRunStates/{deviceComplianceScriptDeviceStateId}/managedDevice/retrieveDeviceLogCollectionRequests
GET /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/users/{userId}/managedDevices/{managedDeviceId}/retrieveDeviceLogCollectionRequests
GET /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/detectedApps/{detectedAppId}/managedDevices/{managedDeviceId}/retrieveDeviceLogCollectionRequests
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this function returns a `200 OK` response code and a [deviceLogCollectionResponseV2](../resources/intune-devices-devicelogcollectionresponsev2.md) in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/managedDevices/{managedDeviceId}/retrieveDeviceLogCollectionRequests
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 667

{
  "value": {
    "@odata.type": "microsoft.graph.deviceLogCollectionResponseV2",
    "requestId": "Request Id value",
    "status": "completed",
    "managedDeviceId": "3b336f00-6f00-3b33-006f-333b006f333b",
    "errorCode": 9,
    "requestedDateTimeUTC": "2016-12-31T23:57:40.7845755-08:00",
    "completedDateTimeUTC": "2016-12-31T23:59:26.6616036-08:00",
    "initiatedByUserPrincipalName": "Initiated By User Principal Name value",
    "expirationDateTimeUTC": "2017-01-01T00:02:49.2157996-08:00",
    "size": 1.3333333333333333,
    "sizeInKB": 2.6666666666666665,
    "enrolledByUserPrincipalName": "Enrolled By User Principal Name value"
  }
}
```

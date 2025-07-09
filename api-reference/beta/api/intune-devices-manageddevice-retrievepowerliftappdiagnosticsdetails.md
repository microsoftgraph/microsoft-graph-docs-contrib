---
title: "retrievePowerliftAppDiagnosticsDetails function"
description: "Intune Devices Manageddevice Retrievepowerliftappdiagnosticsdetails Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# retrievePowerliftAppDiagnosticsDetails function

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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
GET /deviceManagement/managedDevices/retrievePowerliftAppDiagnosticsDetails
GET /deviceManagement/comanagedDevices/retrievePowerliftAppDiagnosticsDetails
GET /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/users/{userId}/managedDevices/retrievePowerliftAppDiagnosticsDetails
GET /deviceManagement/deviceManagementScripts/{deviceManagementScriptId}/deviceRunStates/{deviceManagementScriptDeviceStateId}/managedDevice/detectedApps/{detectedAppId}/managedDevices/retrievePowerliftAppDiagnosticsDetails
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Property|Type|Description|
|:---|:---|:---|
|userPrincipalName|String||



## Response
If successful, this function returns a `200 OK` response code and a [powerliftIncidentDetail](../resources/intune-devices-powerliftincidentdetail.md) collection in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/managedDevices/retrievePowerliftAppDiagnosticsDetails(userPrincipalName='parameterValue')
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 519

{
  "value": [
    {
      "@odata.type": "microsoft.graph.powerliftIncidentDetail",
      "powerliftId": "Powerlift Id value",
      "easyId": "Easy Id value",
      "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
      "platformDisplayName": "Platform Display Name value",
      "applicationName": "Application Name value",
      "clientApplicationVersion": "Client Application Version value",
      "locale": "Locale value",
      "fileNames": [
        "File Names value"
      ]
    }
  ]
}
```
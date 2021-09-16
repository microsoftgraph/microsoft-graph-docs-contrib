---
title: "managedDevice: executeAction"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# managedDevice: executeAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/managedDevices/executeAction
POST /users/{usersId}/managedDevices/executeAction
POST /deviceManagement/managedDevices/executeAction
POST /deviceManagement/comanagedDevices/executeAction
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|actionName|managedDeviceRemoteAction|**TODO: Add Description**|
|keepEnrollmentData|Boolean|**TODO: Add Description**|
|keepUserData|Boolean|**TODO: Add Description**|
|deviceIds|String collection|**TODO: Add Description**|
|notificationTitle|String|**TODO: Add Description**|
|notificationBody|String|**TODO: Add Description**|
|deviceName|String|**TODO: Add Description**|



## Response

If successful, this action returns a `200 OK` response code and a [bulkManagedDeviceActionResult](../resources/intune-bulkmanageddeviceactionresult.md) in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "manageddevice_executeaction"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/managedDevices/executeAction
Content-Type: application/json
Content-length: 228

{
  "actionName": "String",
  "keepEnrollmentData": "Boolean",
  "keepUserData": "Boolean",
  "deviceIds": [
    "String"
  ],
  "notificationTitle": "String",
  "notificationBody": "String",
  "deviceName": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bulkManagedDeviceActionResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.bulkManagedDeviceActionResult"
  }
}
```


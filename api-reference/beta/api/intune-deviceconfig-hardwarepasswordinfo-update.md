---
title: "Update hardwarePasswordInfo"
description: "Update the properties of a hardwarePasswordInfo object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update hardwarePasswordInfo

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

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
PATCH /deviceManagement/hardwarePasswordInfo/{hardwarePasswordInfoId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md) object.

The following table shows the properties that are required when you create the [hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique string Id that is based on associated Intune Device Id. This property is read-only.|
|serialNumber|String|Associated device's serial number . This property is read-only.|
|currentPassword|String|Current device password. This property is read-only.|
|previousPasswords|String collection|List of previous device passwords. This property is read-only.|



## Response
If successful, this method returns a `200 OK` response code and an updated [hardwarePasswordInfo](../resources/intune-deviceconfig-hardwarepasswordinfo.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/hardwarePasswordInfo/{hardwarePasswordInfoId}
Content-type: application/json
Content-length: 216

{
  "@odata.type": "#microsoft.graph.hardwarePasswordInfo",
  "serialNumber": "Serial Number value",
  "currentPassword": "Current Password value",
  "previousPasswords": [
    "Previous Passwords value"
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 265

{
  "@odata.type": "#microsoft.graph.hardwarePasswordInfo",
  "id": "418e4bb4-4bb4-418e-b44b-8e41b44b8e41",
  "serialNumber": "Serial Number value",
  "currentPassword": "Current Password value",
  "previousPasswords": [
    "Previous Passwords value"
  ]
}
```
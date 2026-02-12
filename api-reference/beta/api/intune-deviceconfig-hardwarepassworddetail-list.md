---
title: "List hardwarePasswordDetails"
description: "List properties and relationships of the hardwarePasswordDetail objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List hardwarePasswordDetails

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.PrivilegedOperations.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.PrivilegedOperations.All|

#### >>> Missing a permission "DeviceManagementManagedDevices.PrivilegedOperations.All". When executing the command it is presented an error message referring to this permission <<< ###

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/hardwarePasswordDetails
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [hardwarePasswordDetail](../resources/intune-deviceconfig-hardwarepassworddetail.md) objects in the response body.

## Example

### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/hardwarePasswordDetails
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 328

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.hardwarePasswordDetail",
      "id": "e3ef8349-8349-e3ef-4983-efe34983efe3",
      "serialNumber": "Serial Number value",
      "currentPassword": "Current Password value",
      "previousPasswords": [
        "Previous Passwords value"
      ]
    }
  ]
}
```

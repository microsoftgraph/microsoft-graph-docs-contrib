---
title: "List users"
description: "List properties and relationships of the user objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List users

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [user](../resources/intune-shared-user.md) objects.

        ## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).  The specific permission depends on the context.

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)||
| &nbsp; &nbsp; **Device management** | DeviceManagementManagedDevices.ReadWrite.All, DeviceManagementManagedDevices.Read.All |
| &nbsp; &nbsp; **MAM** | DeviceManagementApps.ReadWrite.All, DeviceManagementApps.Read.All |
| &nbsp; &nbsp; **Onboarding** | DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementServiceConfig.Read.All |
| &nbsp; &nbsp; **Troubleshooting** | DeviceManagementManagedDevices.ReadWrite.All, DeviceManagementManagedDevices.Read.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application||
| &nbsp; &nbsp; **Device management** | DeviceManagementManagedDevices.ReadWrite.All, DeviceManagementManagedDevices.Read.All |
| &nbsp; &nbsp; **MAM** | DeviceManagementApps.ReadWrite.All, DeviceManagementApps.Read.All |
| &nbsp; &nbsp; **Onboarding** | DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementServiceConfig.Read.All |
| &nbsp; &nbsp; **Troubleshooting** | DeviceManagementManagedDevices.ReadWrite.All, DeviceManagementManagedDevices.Read.All |

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## HTTP Request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users
```

## Request headers

|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [user](../resources/intune-shared-user.md) objects in the response body.

## Example

### Request

Here is an example of the request.

``` http
GET https://graph.microsoft.com/beta/users
```

### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 136

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.user",
      "id": "d36894ae-94ae-d368-ae94-68d3ae9468d3"
    }
  ]
}
```

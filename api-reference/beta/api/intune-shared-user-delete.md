---
title: "Delete user"
description: "Deletes a user."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Delete user

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Deletes a [user](../resources/intune-shared-user.md).
        ## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).  The specific permission required depends on context.

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)||
| &nbsp; &nbsp; **Device management** | DeviceManagementManagedDevices.ReadWrite.All|
| &nbsp; &nbsp; **MAM** | DeviceManagementApps.ReadWrite.All|
| &nbsp; &nbsp; **Onboarding** | DeviceManagementServiceConfig.ReadWrite.All|
| &nbsp; &nbsp; **Troubleshooting** | DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application||
| &nbsp; &nbsp; **Device management** | DeviceManagementManagedDevices.ReadWrite.All|
| &nbsp; &nbsp; **MAM** | DeviceManagementApps.ReadWrite.All|
| &nbsp; &nbsp; **Onboarding** | DeviceManagementServiceConfig.ReadWrite.All|
| &nbsp; &nbsp; **Troubleshooting** | DeviceManagementManagedDevices.ReadWrite.All|

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## HTTP Request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /users/{usersId}
```

## Request headers

|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

Here is an example of the request.

``` http
DELETE https://graph.microsoft.com/beta/users/{usersId}
```

### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

``` http
HTTP/1.1 204 No Content
```

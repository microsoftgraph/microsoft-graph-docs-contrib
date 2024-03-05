---
title: "wipeAndBlockManagedApps action"
description: "Blocks the managed app user from app check-in."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# wipeAndBlockManagedApps action

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Blocks the managed app user from app check-in.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
To call this API, you must have the Intune Role Permission "Application -> Wipe" and one of the listed permissions for Delegated permission type.  The Intune Role Permission only supports delegated authentication.  Although the API supports Application only permission type, the API call cannot be completed without the Intune Role delegated permission.

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|
|Intune Role (RBAC)|Application -> Wipe|

> **Note:** The Intune role permission is required for both delegated and app-only authentication scenarios.

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/wipeAndBlockManagedApps
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this action returns a `204 No Content` response code.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/wipeAndBlockManagedApps
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 204 No Content
```

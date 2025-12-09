---
title: "Delete userConfiguration"
description: "Delete a userConfiguration object."
author: "daiyue-microsoft"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Delete userConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [userConfiguration](../resources/userconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "userconfiguration-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/userconfiguration-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /me/mailFolders/{mailFolderId}/userConfigurations/{userConfigurationId}
DELETE /users/{usersId}/mailFolders/{mailFolderId}/userConfigurations/{userConfigurationId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_userconfiguration",
  "sampleKeys": ["inbox", "MyApp"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/me/mailFolders/inbox/userConfigurations/MyApp
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


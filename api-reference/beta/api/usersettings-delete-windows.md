---
title: "Delete windowsSetting"
description: "Delete a windowsSetting object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 03/11/2025
ms.localizationpriority: medium
ms.subservice: "project-rome"
doc_type: apiPageType
---

# Delete windowsSetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete all [windowsSetting](../resources/windowssetting.md) objects of a user. This method is only supported in AAD.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "usersettings-delete-windows-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/usersettings-delete-windows-permissions.md)]
The calling user must be assigned the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):

- Microsoft 365 Backup Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE users/{user-id}@{tenant-id}/settings/windows
```
> [!Note]
>
> + {tenant-id} in the request URL must match the tenant id of the calling user.

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
  "name": "delete_windowssetting"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/users/{user-id}@{tenant-id}/settings/windows
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


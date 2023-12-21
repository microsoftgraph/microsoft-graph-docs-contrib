---
title: "user: deletePasswordSingleSignOnCredentials"
description: "Delete Password Single Sign-On credentials for a service principal that is associated to a user."
author: "AllisonAm"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# user: deletePasswordSingleSignOnCredentials

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete Password Single Sign-On credential for a given service principal that is associated to a given user.

For applications using Password Single Sign-On, administrators can configure sign-in credentials for users and groups that are assigned to the application. Administrators and users may delete their credentials 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "user-deletepasswordsinglesignoncredentials-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/user-deletepasswordsinglesignoncredentials-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/deletePasswordSingleSignOnCredentials
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|id|String|The ID of the service principal linked to the credential set that will be deleted. |



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "userthis.deletepasswordsinglesignoncredentials"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/deletePasswordSingleSignOnCredentials
Content-Type: application/json

{
  "id": "314ac440-129f-4cb3-ad61-24ef4a7de1d9"
}
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


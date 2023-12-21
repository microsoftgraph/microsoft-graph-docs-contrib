---
title: "user: getPasswordSingleSignOnCredentials"
description: "Get all Password Single Sign-On credentials associated to a given user."
author: "AllisonAm"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# user: getPasswordSingleSignOnCredentials

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of Password Single Sign-On credentials for a given user. Passwords are never returned, and instead are always returned as null or empty strings.

For applications using Password Single Sign-On, administrators can configure sign-in credentials for users and groups that are assigned to the application. Administrators and users are able to retrieve a list of credentials for that user's assigned Password Single Sign-On applications.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "user-getpasswordsinglesignoncredentials-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/user-getpasswordsinglesignoncredentials-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/getPasswordSingleSignOnCredentials
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "userthis.getpasswordsinglesignoncredentials"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/getPasswordSingleSignOnCredentials
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.AAD.AppManagement.passwordSingleSignOnCredentialSet)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.passwordSingleSignOnCredentialSet)",
  "value": [
    {
      "id": "314ac440-129f-4cb3-ad61-24ef4a7de1d9",
      "credentials": [
        {
          "fieldId": "param_userName",
          "value": "person@company.com",
          "type": "username"
        },
        {
          "fieldId": "param_password",
          "value": null,
          "type": "password"
        }
      ]
    },
    {
      "id": "c5ec0630-3143-4f69-bd05-b3854502cd8d",
      "credentials": [
        {
          "fieldId": "param_email",
          "value": "person@company.com",
          "type": "username"
        },
        {
          "fieldId": "param_password",
          "value": null,
          "type": "password"
        }
      ]
    }
  ]
}
```


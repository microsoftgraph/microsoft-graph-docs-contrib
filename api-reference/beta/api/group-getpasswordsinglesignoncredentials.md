---
title: "group: getPasswordSingleSignOnCredentials"
description: "Get the list of password-based single sign-on credentials for a group. This API returns the encrypted passwords as either null or empty strings."
author: "AllisonAm"
ms.localizationpriority: medium
ms.prod: "groups"
doc_type: apiPageType
---

# group: getPasswordSingleSignOnCredentials

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of password-based single sign-on credentials for a group. This API returns the encrypted passwords as either nulls or empty strings.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "group-getpasswordsinglesignoncredentials-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/group-getpasswordsinglesignoncredentials-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /groups/{groupsId}/getPasswordSingleSignOnCredentials
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
  "name": "groupthis.getpasswordsinglesignoncredentials"
}
-->
``` http
POST https://graph.microsoft.com/beta/groups/{groupsId}/getPasswordSingleSignOnCredentials
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.passwordSingleSignOnCredentialSet)"
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
          "value": "xyz@company.com",
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
      "id": "b097509f-96a3-4e66-ae01-9d5a337be55f",
      "credentials": [
        {
          "fieldId": "param_email",
          "value": "xyz@company.com",
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
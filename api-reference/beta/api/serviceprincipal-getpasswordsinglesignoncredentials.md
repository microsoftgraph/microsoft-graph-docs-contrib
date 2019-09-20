---
title: "servicePrincipal: getPasswordSingleSignOnCredentials"
description: "Get a list of password single sign on credentials for a user or group by id."
localization_priority: Normal
author: "bharathramh92"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# servicePrincipal: getPasswordSingleSignOnCredentials

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of password single sign on credentials for a user or group by id.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Users can get their own credentials. Service Principal Owners and admins with the following roles will be able to get any user or group credentials: GlobalAdministrator, ApplicationAdministrator, CloudApplicationAdministrator. Anyone with microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials RBAC role will be able to get the credentials for any user or group.|
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Application.ReadWrite.All, Directory.AccessAsUser.All, Directory.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /servicePrincipals/getPasswordSingleSignOnCredentials
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |
| Content-Type  | application/json. Required.  |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The id of the user or group this credential set belongs to.|

## Response

If successful, this method returns `200, OK` response code and a new [passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md) object in the response body.

## Examples

The following is an example of how to call this API.

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_getpasswordsinglesignoncredentials"
}-->
```http
POST https://graph.microsoft.com/beta/servicePrincipals/getPasswordSingleSignOnCredentials
Content-type: application/json

{
  "id": "00000000-0000-0000-000000000000"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.passwordSingleSignOnCredentialSet"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "id": "00000000-0000-0000-000000000000",
  "credentials": [
    {
      "fieldId": "param_username",
      "value": "myusername",
      "type": "username"
    },
    {
      "fieldId": "param_password",
      "value": "pa$$w0rd",
      "type": "password"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePrincipal: getPasswordSingleSignOnCredentials",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

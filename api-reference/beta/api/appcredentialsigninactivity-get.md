---
title: "Get appCredentialSignInActivity"
doc_type: apiPageType
description: "Get an appCredentialSignInActivity object that contains recent activity of an application credential."
ms.localizationpriority: medium
author: "madansr7"
ms.prod: "identity-and-sign-in"
---

# Get appCredentialSignInActivity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) object that contains recent activity of an application credential.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | AuditLog.Read.All, Directory.Read.All       |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | AuditLog.Read.All, Directory.Read.All       |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /reports/appCredentialSignInActivities/{appCredentialSignInActivityId}
```

## Optional query parameters

This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) object in the response body.

## Examples

### Request

The following is an example of a request that shows how to get an **appCredentialSignInActivity** object based on its ID.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_appcredentialsigninactivity_1",
  "sampleKeys": ["ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3fGFwcGxpY2F0aW9u"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/appCredentialSignInActivities/ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3fGFwcGxpY2F0aW9u
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-appcredentialsigninactivity-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-appcredentialsigninactivity-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-appcredentialsigninactivity-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-appcredentialsigninactivity-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-appcredentialsigninactivity-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-appcredentialsigninactivity-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appCredentialSignInActivity"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 211

{
  "@odata.type": "#microsoft.graph.appCredentialSignInActivity",
  "appId": "f4d9654f-0305-4072-878c-8bf266dfe146",
  "appObjectId": "6920caa5-1cae-4bc8-bf59-9c0b8495d240",
  "credentialOrigin": "application",
  "expirationDate": "2021-04-01T21:36:48-8:00",
  "id": "ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3fGFwcGxpY2F0aW9u",
  "keyId": "83f45296-fb8f-4aaa-a399-ac51084e02b7",
  "keyType":"certificate",
  "keyUsage": "sign",
  "resourceId": "a89dc091-a671-4da4-9fcf-3ef06bdf3ac3",
  "servicePrincipalObjectId": "cf533854-9fb7-4c01-9c0e-f68922ada8b6",
  "signInActivity": {
    "lastSignInDateTime": "2021-04-01T00:00:00-8:00",
    "lastSignInRequestId": "b0a282a3-68ec-4ec8-aef0-290ed4350271"
  }
}
```

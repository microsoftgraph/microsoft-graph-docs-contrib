---
title: "List appCredentialSignInActivities"
doc_type: apiPageType
description: "Get a list of appCredentialSignInActivity object that contains recent activity of application credentials."
ms.localizationpriority: medium
author: "madansr7"
ms.prod: "identity-and-sign-in"
---

# List appCredentialSignInActivities

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) objects that contains recent activity of application credentials.

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
GET /reports/appCredentialSignInActivities
```

## Optional query parameters

This method supports the `$top`, `$filter`, and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description    |
| :------------ | :------------- |
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) objects in the response body.

## Examples

### Example 1: List all appCredentialSignInActivities

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_appcredentialsigninactivities"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/appCredentialSignInActivities
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-appcredentialsigninactivities-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-appcredentialsigninactivities-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-appcredentialsigninactivities-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-appcredentialsigninactivities-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-appcredentialsigninactivities-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-appcredentialsigninactivities-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.appCredentialSignInActivity)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
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
        "lastSignInDateTime": "2021-03-18T00:00:00-8:00",
        "lastSignInRequestId": "guid1"
      }
    },
    {
      "appId": "09e9da93-c1e8-4000-8b96-1ea6a12acf72",
      "appObjectId": "2e9276ec-7895-41f0-b63c-4d1d94552362",
      "credentialOrigin": "servicePrincipal",
      "expirationDate": "2021-05-11T08:36:48-8:00",
      "id": "OGEzN2NmZWMtYjBhMS00Y2IxLWFjMDgtYzUyYjAzODM0ZjRhfHNlcnZpY2VQcmluY2lwYWw=",
      "keyId": "8a37cfec-b0a1-4cb1-ac08-c52b03834f4a",
      "keyType":"certificate",
      "keyUsage": "verify",
      "resourceId": "cde0ef8b-9c88-473f-89c9-91eebafdec8b",
      "servicePrincipalObjectId": "afb9dcdc-34ef-4d8e-91b5-4f094758100c",
      "signInActivity": {
        "lastSignInDateTime": "2021-02-01T01:23:46-8:00",
        "lastSignInRequestId": "guid2"
      }
    }
  ]
}
```

### Example 2:  Get an appCredentialSignInActivitiy for a credential by keyId

The following example shows how to get an **appCredentialSignInActivity** object filtered by **keyId**.

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_appcredentialsigninactivities_filter_keyId"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/appCredentialSignInActivities?$filter=keyId eq '83f45296-fb8f-4aaa-a399-ac51084e02b7'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-appcredentialsigninactivities-filter-keyid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-appcredentialsigninactivities-filter-keyid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-appcredentialsigninactivities-filter-keyid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-appcredentialsigninactivities-filter-keyid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-appcredentialsigninactivities-filter-keyid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-appcredentialsigninactivities-filter-keyid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appCredentialSignInActivity"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.appCredentialSignInActivity",
  "appId": "f4d9654f-0305-4072-878c-8bf266dfe146",
  "appObjectId": "6920caa5-1cae-4bc8-bf59-9c0b8495d240",
  "credentialOrigin": "application",
  "expirationDate": "2021-04-01T21:36:48-8:00",
  "id": "ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3fGFwcGxpY2F0aW9u",
  "keyId": "83f45296-fb8f-4aaa-a399-ac51084e02b7",
  "keyType":"secret",
  "keyUsage": "sign",
  "resourceId": "a89dc091-a671-4da4-9fcf-3ef06bdf3ac3",
  "servicePrincipalObjectId": "cf533854-9fb7-4c01-9c0e-f68922ada8b6",
  "signInActivity": {
    "lastSignInDateTime": "2021-04-01T00:00:00-8:00",
    "lastSignInRequestId": "b0a282a3-68ec-4ec8-aef0-290ed4350271"
  }
}
```

### Example 3:  Get an appCredentialSignInActivity for an application by appId

The following example shows how to get an **appCredentialSignInActivity** object filtered by **appId**.

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_appcredentialsigninactivities_filter_appid"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/appCredentialSignInActivities?$filter=appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-appcredentialsigninactivities-filter-appid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-appcredentialsigninactivities-filter-appid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-appcredentialsigninactivities-filter-appid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-appcredentialsigninactivities-filter-appid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-appcredentialsigninactivities-filter-appid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-appcredentialsigninactivities-filter-appid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appCredentialSignInActivity"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.appCredentialSignInActivity",
  "appId": "f4d9654f-0305-4072-878c-8bf266dfe146",
  "credentialOrigin": "application",
  "expirationDate": "2021-04-01T21:36:48-8:00",
  "id": "ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3fGFwcGxpY2F0aW9u",
  "keyId": "83f45296-fb8f-4aaa-a399-ac51084e02b7",
  "keyType":"secret",
  "keyUsage": "sign",
  "resourceId": "a89dc091-a671-4da4-9fcf-3ef06bdf3ac3",
  "signInActivity": {
    "lastSignInDateTime": "2021-04-01T00:00:00-8:00",
    "lastSignInRequestId": "guid1"
  }
}
```

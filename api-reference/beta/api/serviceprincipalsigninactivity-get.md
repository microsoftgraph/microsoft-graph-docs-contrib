---
title: "Get servicePrincipalSignInActivity"
doc_type: apiPageType
description: "Get a servicePrincipalSignInActivity object that contains sign-in activity information for a service principal in an Azure Active Directory tenant."
ms.localizationpriority: medium
author: "madansr7"
ms.prod: "identity-and-sign-in"
---

# Get servicePrincipalSignInActivity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [servicePrincipalSignInActivity](../resources/serviceprincipalsigninactivity.md) object that contains sign-in activity information for a service principal in an Azure Active Directory tenant. You can use a service principal as a client or resource. A service principal supports delegated or app-only authentication context.

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
GET /reports/servicePrincipalSignInActivities/{servicePrincipalSignInActivityId}
```

## Optional query parameters

This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description    |
| :------------ | :------------- |
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [servicePrincipalSignInActivity](../resources/serviceprincipalsigninactivity.md) object in the response body.

## Examples

### Request

The following is an example of a request that shows how to get the last sign-in information for a service principal based on its ID.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_serviceprincipal_last_signin_1",
  "sampleKeys": ["ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/servicePrincipalSignInActivities/ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-serviceprincipal-last-signin-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-serviceprincipal-last-signin-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-serviceprincipal-last-signin-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-serviceprincipal-last-signin-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-serviceprincipal-last-signin-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-serviceprincipal-last-signin-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-serviceprincipal-last-signin-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipalSignInActivity"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
     "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/servicePrincipalSignInActivities",
     "appId": "83f45296-fb8f-4aaa-a399-ac51084e02b7",    
     "applicationAuthenticationClientSignInActivity": {
          "lastSignInDateTime": "2021-03-01T00:00:00Z",
          "lastSignInRequestId": "b71f24ec-f212-4306-b2ae-c229e15805ea"
     },
     "applicationAuthenticationResourceSignInActivity": {
          "lastSignInDateTime": "2021-04-01T00:00:00Z",
          "lastSignInRequestId": "53e6981f-2272-4deb-972c-c8272aca986d"
     },
     "delegatedClientSignInActivity": {
          "lastSignInDateTime": "2021-01-01T00:00:00Z",
          "lastSignInRequestId": "2d245633-0f48-4b0e-8c04-546c2bcd61f5"
     },
     "delegatedResourceSignInActivity": {
          "lastSignInDateTime": "2021-02-01T00:00:00Z",
          "lastSignInRequestId": "d2b4c623-f930-42b5-9519-7851ca604b16"
     },
     "id": "ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3",
     "lastSignInActivity": {
          "lastSignInDateTime": "2021-04-01T00:00:00Z",
          "lastSignInRequestId": "cd9733e8-d75a-468f-a63d-6e82bd48c05e"
     }
}
```

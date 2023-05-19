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

This method supports OData query parameters to help customize the response. For details about how to use these parameters, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description    |
| :------------ | :------------- |
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [servicePrincipalSignInActivity](../resources/serviceprincipalsigninactivity.md) object in the response body.

## Examples

### Example 1: Get the last sign-in information for a service principal

The following example shows how to get the last sign-in information for a service principal based on its ID.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_serviceprincipal_last_signin_1",
  "sampleKeys": ["ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3"]
}-->
```http
GET https://graph.microsoft.com/beta/reports/servicePrincipalSignInActivities/ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3
```

#### Response

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

### Example 2: Get a servicePrincipalSignInActivity filtered by applicationId

The following example shows how to get a **servicePrincipalSignInActivity** object filtered by **applicationId**.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_serviceprincipal_last_signin_2"
} -->
```http
GET https://graph.microsoft.com/beta/reports/servicePrincipalSignInActivities?$filter=appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'
```

#### Response

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
     "@odata.context":"https://graph.microsoft.com/beta/$metadata#reports/servicePrincipalSignInActivities",
     "appId": "f4d9654f-0305-4072-878c-8bf266dfe146",
     "applicationAuthenticationClientSignInActivity": {
          "lastSignInDateTime": "2021-03-01T00:00:00-8:00",
          "lastSignInRequestId": "0e0cb2c3-85b9-4bdc-8a89-3bd08a5d8548"
     },
     "applicationAuthenticationResourceSignInActivity": {
          "lastSignInDateTime": "2021-04-01T00:00:00-8:00",
          "lastSignInRequestId": "b26f6bf8-af96-4f2a-bef7-07913f634d6d"
     },
     "delegatedClientSignInActivity": {
          "lastSignInDateTime": "2021-01-01T00:00:00-8:00",
          "lastSignInRequestId": "7e24e4a9-ee1e-45d9-97ff-b4fb0c854b16"
     },
     "delegatedResourceSignInActivity": {
          "lastSignInDateTime": "2021-02-01T00:00:00-8:00",
          "lastSignInRequestId": "3e767241-2173-41f5-a42d-1302549950b2"
     },
     "id": "ZjRkOTY1NGYtMDMwNS00MDcyLTg3OGMtOGJmMjY2ZGZlMTQ2",
     "lastSignInActivity": {
          "lastSignInDateTime": "2021-04-01T00:00:00Z",
          "lastSignInRequestId": "b26f6bf8-af96-4f2a-bef7-07913f634d6d"
     }
}
```

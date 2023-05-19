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

This method supports OData query parameters `$top`, `$filter` and `$orderBy`to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [appCredentialSignInActivity](../resources/appcredentialsigninactivity.md) object in the response body.

## Examples

### Example 1: Get an appCredentialSignInActivity by ID

The following example shows how to get an **appCredentialSignInActivity** object by its ID.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_appcredentialsigninactivity_1",
  "sampleKeys": ["ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3fGFwcGxpY2F0aW9u"]
}-->
```http
GET https://graph.microsoft.com/beta/reports/appCredentialSignInActivities/ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3fGFwcGxpY2F0aW9u
```

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

### Example 2:  Get an appCredentialSignInActivitiy for a credential by keyId

The following example shows how to get an **appCredentialSignInActivity** object filtered by **keyId**.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_appcredentialsigninactivity_2"
}-->
```http
GET https://graph.microsoft.com/beta/reports/appCredentialSignInActivities?$filter=keyId eq '83f45296-fb8f-4aaa-a399-ac51084e02b7'
```

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

<!-- {
  "blockType": "request",
  "name": "get_appcredentialsigninactivity_3"
}-->
```http
GET https://graph.microsoft.com/beta/reports/appCredentialSignInActivities?$filter=appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'
```

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

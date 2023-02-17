---
title: "List application credential last used activity date"
doc_type: apiPageType
description: "Get a list of appCredentialSignInActivity object that contains recent activity of application credentials."
localization_priority: Normal
author: "madansr7"
ms.prod: "microsoft-identity-platform"
---

# List appCredentialSignInActivity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [appCredentialSignInActivity](../resources/appCredentialSignInActivity.md) object that contains recent activity of application credentials.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | AuditLog.Read.All, Directory.Read.All       |
| Delegated (personal Microsoft account) | Not supported                               |
| Application                            | AuditLog.Read.All, Directory.Read.All       |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/reports/appCredentialSignInActivities
```

## Optional query parameters

This method supports the following OData Query Parameters to help customize the response. For details about how to use these parameters, see [OData query parameters](/graph/query_parameters).

## Request headers

| Name          | Description    |
| :------------ | :------------- |
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [appCredentialSignInActivity](../resources/appCredentialSignInActivity.md) objects in the response body.

## Examples

### Example 1:  List appCredentialSignInActivities.

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_signins_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/appCredentialSignInActivities
```

#### Response

The following is an example of the response.

```http
HTTP/1.1 200 OK
Content-type: application/json


{
  "value": [
    {
      "id": "ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3fGFwcGxpY2F0aW9u",
      "keyId": "83f45296-fb8f-4aaa-a399-ac51084e02b7",
      "keyType":"certificate",
      "keyUsage": "sign",
      "appId": "f4d9654f-0305-4072-878c-8bf266dfe146",
      "appObjectId": "6920caa5-1cae-4bc8-bf59-9c0b8495d240",
      "servicePrincipalObjectId": "cf533854-9fb7-4c01-9c0e-f68922ada8b6",
      "resourceId": "a89dc091-a671-4da4-9fcf-3ef06bdf3ac3",
      "credentialOrigin": "application",
      "expirationDate": "2021-04-01T21:36:48-8:00",
      "signInActivity": {
        "lastSignInDateTime": "2021-03-18T00:00:00-8:00",
        "lastSignInRequestId": "guid1"
      }
    },
    {
      "id": "OGEzN2NmZWMtYjBhMS00Y2IxLWFjMDgtYzUyYjAzODM0ZjRhfHNlcnZpY2VQcmluY2lwYWw=",
      "keyId": "8a37cfec-b0a1-4cb1-ac08-c52b03834f4a",
      "keyType":"certificate",
      "keyUsage": "verify",
      "appId": "09e9da93-c1e8-4000-8b96-1ea6a12acf72",
      "appObjectId": "2e9276ec-7895-41f0-b63c-4d1d94552362",
      "servicePrincipalObjectId": "afb9dcdc-34ef-4d8e-91b5-4f094758100c",
      "resourceId": "cde0ef8b-9c88-473f-89c9-91eebafdec8b",
      "credentialOrigin": "servicePrincipal",
      "expirationDate": "2021-05-11T08:36:48-8:00",
      "signInActivity": {
        "lastSignInDateTime": "2021-02-01T01:23:46-8:00",
        "lastSignInRequestId": "guid2"
      }
    }
  ]
}
```

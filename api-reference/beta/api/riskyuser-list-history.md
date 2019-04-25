---
title: "Get history of riskyUser"
description: "Retrieve the risk history  a **riskyUser** object."
localization_priority: Normal
author: "cloudhandler"
ms.prod: "microsoft-identity-platform"
---
# Get riskyUser

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the risk history of a **riskyUser** object.

>**Note:** Using the riskyUsers API requires an Azure AD Premium P2 license.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | IdentityRiskyUser.Read.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | IdentityRiskyUser.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /riskyUsers('{userid}')/history
```


## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| Workbook-Session-Id  | Workbook session ID that determines whether changes are persisted. Optional.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [riskyUsersHistoryItem](../resources/riskyuserhistoryitem.md)  in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_userriskhitsory",
  "sampleKeys": ["c2b6c2b9-dddc-acd0-2b39-d519d803dbc3"]
}-->
```http
GET https://graph.microsoft.com/beta/riskyUsers('f61fad1b-cf1b-4ce5-ba25-957ac919ddeb')/history
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.riskyUser"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "f61fad1b-cf1b-4ce5-ba25-957ac919ddeb636699887174968737",
  "isDeleted": false,
  "isGuest": false,
  "riskLevel": "high",
  "riskState": "atRisk"
  "riskDetail": "none",
  "riskLastUpdatedDateTime": "2018-08-16T03:58:37.4968737Z",
  "userDisplayName": "John Nash",
  "userPrincipalName": "john@contoso.com",
  "userId": "f61fad1b-cf1b-4ce5-ba25-957ac919ddeb",
  "initiatedBy": null,
  "activity": {
        "eventTypes": [
          "leakedCredentials"
        ],
        "detail": null
    }
}


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get user risk history",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


---
title: "team: getTimesOff"
description: "Get all time off objects across all teams to which a user is a direct member."
author: "shanemalone"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.topic: reference
---

# team: getTimesOff

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all [time off](../resources/timeoff.md) objects across all teams to which a user is a direct member.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "team-gettimesoff-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/team-gettimesoff-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/joinedTeams/getTimesOff
GET /users/{id | user-principal-name}/joinedTeams/getTimesOff
```

## Optional query parameters

This method supports the `$top`, `$orderby`, `$select` and `$filter` [OData query parameters](/graph/query-parameters) to help customize the response.

> [!NOTE]
> The `$filter` parameter supports the **sharedTimeOff/startDateTime**, **sharedTimeOff/endDateTime**, **userID** and **teamInfo/teamId** properties. It doesn't support the use of the same property more than once in a query. For example, the following query doesn't work: `sharedTimeOff/startDateTime ge 2024-05-09T00:00:00Z and sharedTimeOff/startDateTime le 2024-05-09T23:59:59Z`; however, the following query works: `sharedTimeOff/startDateTime ge 2024-05-09T00:00:00Z and sharedTimeOff/endDateTime le 2024-05-09T23:59:59Z`.

## Request headers

|Name|Description|
|:---|:---|
| Authorization|Bearer {token}. Required.|
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [time off](../resources/timeoff.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "teamthis.gettimesoff"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/joinedTeams/getTimesOff
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/teamthisgettimesoff-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/teamthisgettimesoff-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/teamthisgettimesoff-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/teamthisgettimesoff-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/teamthisgettimesoff-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/teamthisgettimesoff-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/teamthisgettimesoff-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.timeOff)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "userId": "c5d0c76b-80c4-481c-be50-923cd8d680a1",
      "teamInfo": {
        "displayName": "Contoso Team",
        "teamId": "172b0cce-e65d-44ce-9a49-91d9f2e8493a"
      },
      "userInfo": {
        "displayName": "John Smith",
        "teamId": "c5d0c76b-80c4-481c-be50-923cd8d680a1"
      },
      "createdDateTime": "2019-03-14T05:35:57.755Z",
      "lastModifiedDateTime": "2019-03-14T05:36:08.381Z",
      "lastModifiedBy": {
        "application": null,
        "device": null,
        "conversation": null,
        "user": {
          "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
          "displayName": "John Doe"
        }
      },
      "sharedTimeOff": {
        "timeOffReasonId": "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
        "startDateTime": "2019-03-11T07:00:00Z",
        "endDateTime": "2019-03-12T07:00:00Z",
        "theme": "white"
      },
      "draftTimeOff": {
        "timeOffReasonId": "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
        "startDateTime": "2019-03-11T07:00:00Z",
        "endDateTime": "2019-03-12T07:00:00Z",
        "theme": "pink"
      }
    }
  ]
}
```

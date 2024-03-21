---
title: "team: getOpenShifts"
description: "Get all openShift objects across all teams a user is a direct member of."
author: "shanemalone"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# team: getOpenShifts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all [openShift](../resources/openshift.md) objects across all teams a user is a direct member of.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "team-getopenshifts-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/team-getopenshifts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/joinedTeams/getOpenShifts
GET /users/{id | user-principal-name}/joinedTeams/getOpenShifts
```

## Optional query parameters

This method supports the `$top` and `$filter` [OData query parameters](/graph/query-parameters) to help customize the response.

> [!NOTE]
> The `$filter` parameter supports the **sharedOpenShift/startDateTime**, **sharedOpenShift/endDateTime**, and **teamInfo/teamId** properties. It doesn't support the use of the same property more than once in a query. For example, the following query doesn't work: `sharedOpenShift/startDateTime ge 2024-05-09T00:00:00Z and sharedOpenShift/startDateTime le 2024-05-09T23:59:59Z`; however, the following query works: `sharedOpenShift/startDateTime ge 2024-05-09T00:00:00Z and sharedOpenShift/endDateTime le 2024-05-09T23:59:59Z`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [openShift](../resources/openshift.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "teamthis.getopenshifts"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/joinedTeams/getOpenShifts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/teamthisgetopenshifts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/teamthisgetopenshifts-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/teamthisgetopenshifts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/teamthisgetopenshifts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/teamthisgetopenshifts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/teamthisgetopenshifts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/teamthisgetopenshifts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.openShift)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "createdDateTime": "2019-03-14T04:32:51.451Z",
      "draftOpenShift": {
        "activities": [
          {
            "code": "Break",
            "displayName": "Lunch",
            "endDateTime": "2018-10-04T07:58:45.332Z",
            "isPaid": true,
            "startDateTime": "2018-10-04T00:58:45.340Z"
          }
        ],
        "displayName": "Day shift",
        "endDateTime": "2018-10-04T08:58:45.340Z",
        "notes": "Inventory Management",
        "openSlotCount": 3,
        "startDateTime": "2018-10-04T00:58:45.332Z",
        "theme": "white"
      },
      "id": "OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8",
      "lastModifiedBy": {
        "application": null,
        "conversation": null,
        "device": null,
        "user": {
          "displayName": "John Doe",
          "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8"
        }
      },
      "lastModifiedDateTime": "2019-03-14T05:32:51.451Z",
      "schedulingGroupId": "TAG_228940ed-ff84-4e25-b129-1b395cf78be0",
      "sharedOpenShift": {
        "activities": [
          {
            "code": "",
            "displayName": "Lunch",
            "endDateTime": "2018-10-04T01:58:45.340Z",
            "isPaid": true,
            "startDateTime": "2018-10-04T00:58:45.340Z"
          }
        ],
        "displayName": "Day shift",
        "endDateTime": "2018-10-04T09:50:45.332Z",
        "notes": "Inventory Management",
        "openSlotCount": 2,
        "startDateTime": "2018-10-04T00:58:45.340Z",
        "theme": "white"
      },
      "schedulingGroupInfo": {
        "displayName": "Cashiers",
        "schedulingGroupId": "TAG_228940ed-ff84-4e25-b129-1b395cf78be0"
      },
      "teamInfo": {
        "displayName": "Contoso Team",
        "teamId": "172b0cce-e65d-44ce-9a49-91d9f2e8493a"
      }
    }
  ]
}
```

---
title: "team: getOpenShifts"
description: "Get a list of openShift objects from across all schedules the user has access to."
author: "raulfernandes"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# team: getOpenShifts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [openShift](../resources/openshift.md) objects from across all schedules a user has access to.

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

This method supports the `$filter` [OData query parameter](/graph/query-parameters) to help customize the response.

> [!NOTE]
> The `$filter` parameter doesn't support the use of the same property more than once in a query. For example, the following query doesn't work: `sharedOpenShift/startDateTime ge 2024-05-09T00:00:00Z and sharedOpenShift/startDateTime le 2024-05-09T23:59:59Z`; however, the following query works: `sharedOpenShift/startDateTime ge 2024-05-09T00:00:00Z and sharedOpenShift/endDateTime le 2024-05-09T23:59:59Z`.

## Request headers

|Name|Description|
|:---|:---|
| Authorization|Bearer {token}. Required.|
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [openShift](../resources/openshift.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "teamthis.getopenshifts"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/joinedTeams/getOpenShifts
```


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
      "schedulingGroupName": "Cashiers",
      "teamId": "228940ed-ff84-4e25-b129-1b395cf78be0",
      "teamName": "Downtown shop"
    }
  ]
}
```

---
title: "List shifts"
description: "Get the list of shifts in a schedule."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# List shifts

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Get the list of [shift](../resources/shift.md) instances in a [schedule](../resources/schedule.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.Read.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

> **Note**: This API supports admin permissions. Global admins can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /teams/{teamId}/schedule/shifts
```

## Optional query parameters
This method supports the $filter [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [shift](../resources/shift.md) objects in the response body.

## Example

#### Request

The following is an example of a request that gets all **shift** objects that have a shared version and a draft version between March 11 - March 18, 2019.
<!-- {
  "blockType": "request",
  "name": "schedule-list-shifts"
}-->
```http
GET https://graph.microsoft.com/beta/teams/{teamId}/schedule/shifts?$filter=sharedShift/startDateTime ge 2019-03-11T00:00:00.000Z and sharedShift/endDateTime le 2019-03-18T00:00:00.000Z and draftShift/startDateTime ge 2019-03-11T00:00:00.000Z and draftShift/endDateTime le 2019-03-18T00:00:00.000Z
```

#### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.shift"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 401

{
  "value": [
    {
      "id": "string",
      "userId": "string",
      "schedulingGroupId": "string",
      "sharedShift": {
        "notes": "string",
        "displayName": "string",
        "startDateTime": "2019-03-12T00:00:00.000Z",
        "endDateTime": "2019-03-12T08:00:00.000Z",
        "theme": "white",
        "activities": [
          {
            "isPaid": true,
            "startDateTime": "2019-03-12T00:00:00.000Z",
            "endDateTime": "2019-03-12T00:15:00.000Z",
            "code": "string",
            "displayName": "string"
          }
        ]
      },
      "draftShift": {
        "notes": "string",
        "displayName": "string",
        "startDateTime": "2019-03-12T00:00:00.000Z",
        "endDateTime": "2019-03-12T08:00:00.000Z",
        "theme": "white",
        "activities": [
          {
            "isPaid": true,
            "startDateTime": "2019-03-12T00:00:00.000Z",
            "endDateTime": "2019-03-12T00:15:00.000Z",
            "code": "string",
            "displayName": "string"
          }
        ]
      },
      "createdDateTime": "2018-10-04T00:58:45.340Z",
      "lastModifiedDateTime": "2018-10-04T00:58:45.340Z",
      "lastModifiedBy": {
        "user": {
          "id": "string",
          "displayName": "string"
        },
        "application": {
          "id": "string",
          "displayName": "string"
        },
        "device": {
          "id": "string",
          "displayName": "string"
        }
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get the list of shifts in this schedule",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/api/schedule-list-shifts.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

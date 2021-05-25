---
title: "Replace timeCard"
description: "Update an existing timeCard entry."
author: "akumar39"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Replace timeCard

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Replace an existing [timeCard](../resources/timecard.md) with updated values.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Schedule.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Schedule.ReadWrite.All*  |

>\* **Important:** When you use application permissions, you must include the `MS-APP-ACTS-AS` header in the request.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /teams/{teamId}/schedule/timecards/{timeCardID}
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.  |
| MS-APP-ACTS-AS | The ID of the user on behalf of whom the app is acting. Required when you use the application permission scope. |

## Request body

In the request body, supply a JSON representation of a [timeCard](../resources/timecard.md) object.

## Response

If successful, this method returns a `200 OK` response code and a [timeCard](../resources/timecard.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "timecard_replace"
}-->

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "timecard-replace"
}-->

```http
PUT https://graph.microsoft.com/beta/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timecards/3895809b-a618-4c0d-86a0-d42b25b7d74f
Content-type: application/json

{
   "clockInEvent":{
         "dateTime":"2019-03-18T00:00:00.000Z",
         "atApprovedLocation":true,
         "notes":{
               "content": "Started late due to traffic in CA 237",
                "contentType": "text"
         },
   },
   "clockOutEvent":null,
   "notes":{
        "content": "8 To 5 Inventory management",
        "contentType": "text"
   },
   "breaks":[
      {
         "notes":{
             "content": "Lunch break",
             "contentType": "text"
         },
         "start":{
            "dateTime":"2019-03-18T04:00:00.000Z",
            "atApprovedLocation":true,
            "notes":{
                "content": "Starting break 15 mins late to make up for late clockin",
                "contentType": "text"
            },
         }
      }
   ]
}
```

### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.timeCard",
  "name": "timecard_replace"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "id":"3895809b-a618-4c0d-86a0-d42b25b7d74f",
   "userId":"a3601044-a1b5-438e-b742-f78d01d68a67",
   "createdDateTime":"2019-03-18T00:00:00.000Z",
   "createdBy":{
      "user":{
         "id":"a3601044-a1b5-438e-b742-f78d01d68a67",
         "displayName":"Dwight Schrute"
      }
   },
   "lastModifiedDateTime":"2019-03-18T00:00:00.000Z",
   "lastModifiedBy":{
      "user":{
         "id":"a3601044-a1b5-438e-b742-f78d01d68a67",
         "displayName":"Dwight Schrute"
      }
   },
   "state":"onBreak",
   "confirmationStatus":"notConfirmed",
   "originalEntry":{
      "clockInEvent":{
         "dateTime":"2019-03-18T00:00:00.000Z",
         "atApprovedLocation":true,
         "notes":{
               "content": "Started late due to traffic in CA 237",
                "contentType": "text"
         },
      },
      "clockOutEvent":null,
      "breaks":[
         {
            "breakId":"string",
            "notes":{
                "content": "Lunch break",
                "contentType": "text"
            },
            "start":{
               "dateTime":"2019-03-18T02:00:00.000Z",
               "atApprovedLocation":true,
               "notes":{
                   "content": "Starting break late to make up for late clockin",
                   "contentType": "text"
                }
            },
            "end":null
         }
      ]
   },
   "clockInEvent":{
      "dateTime":"2019-03-18T00:00:00.000Z",
      "atApprovedLocation":true,
      "notes":{
               "content": "Started late due to traffic in CA 237",
                "contentType": "text"
         }
   },
   "clockOutEvent":null,
   "notes":{
        "content": "8 To 5 Inventory management",
        "contentType": "text"
   },
   "breaks":[
      {
         "breakId":"string",
         "notes":{
             "content": "Lunch break",
             "contentType": "text"
         },
         "start":{
            "dateTime":"2019-03-18T04:00:00.000Z",
            "atApprovedLocation":true,
            "notes":{
                "content": "Starting break 15 mins late to make up for late clockin",
                "contentType": "text"
            }
         },
         "end":null
      }
   ]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Replace an existing timeCard",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

---
title: "Create timeCard"
description: "Create a timeCard instance in the schedule."
author: "akumar39"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Create timeCard

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [timeCard](../resources/timecard.md) instance in a [schedule](../resources/schedule.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "timecard_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/timecard-post-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{teamId}/schedule/timeCards
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required.|
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body

Provide the new [timeCard](../resources/timecard.md) object in the request body for this method.

## Response

If successful, this method returns a `201 Created` response code and a [timeCard](../resources/timecard.md) object in the response body.

## Example

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "timecard-post"
}-->

```http
POST https://graph.microsoft.com/beta/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timeCards
Content-type: application/json

{
  "userId":"a3601044-a1b5-438e-b742-f78d01d68a67",
  "clockInEvent":{
     "dateTime":"2019-03-18T00:00:00.000Z",
     "isAtApprovedLocation":true,
     "notes": {
        "content": "Started late due to traffic in CA 237",
        "contentType": "text"
     },
  },
  "notes":{
        "content": "8 To 5 Inventory management",
        "contentType": "text"
   },
  "breaks":[
     {
       "breakId": "string",
        "notes":{
             "content": "Lunch break",
             "contentType": "text"
        },
        "start":{
           "dateTime":"2019-03-18T02:00:00.000Z",
           "isAtApprovedLocation":true,
           "notes": {
                "content": "Reduced break to make up for lost time",
                "contentType": "text"
             },
        }
     }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/timecard-post-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/timecard-post-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/timecard-post-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/timecard-post-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/timecard-post-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/timecard-post-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/timecard-post-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/timecard-post-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.timeCard"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "3895809b-a618-4c0d-86a0-d42b25b7d74f",
  "userId": "a3601044-a1b5-438e-b742-f78d01d68a67",
  "createdDateTime": "2019-03-18T00:00:00.000Z",
  "createdBy": {
    "user": {
      "id": "a3601044-a1b5-438e-b742-f78d01d68a67",
      "displayName": "Dwight Schrute"
    }
  },
  "lastModifiedDateTime": "2019-03-18T00:00:00.000Z",
  "lastModifiedBy": {
    "user": {
      "id": "a3601044-a1b5-438e-b742-f78d01d68a67",
      "displayName": "Dwight Schrute"
    }
  },
  "state": "onBreak",
  "confirmationStatus": "notConfirmed",
  "originalEntry": {
    "clockInEvent": {
      "dateTime": "2019-03-18T00:00:00.000Z",
      "atApprovedLocation": true,
      "isAtApprovedLocation": true,
      "notes": {
        "content": "Started late due to traffic in CA 237",
        "contentType": "text"
      }
    },
    "clockOutEvent": null,
    "breaks": [
      {
        "breakId": "string",
        "notes": {
          "content": "Lunch break",
          "contentType": "text"
        },
        "start": {
          "dateTime": "2019-03-18T02:00:00.000Z",
          "atApprovedLocation": true,
          "isAtApprovedLocation": true,
          "notes": {
            "content": "Reduced break to make up for lost time",
            "contentType": "text"
          }
        },
        "end": null
      }
    ]
  },
  "clockInEvent": {
    "dateTime": "2019-03-18T00:00:00.000Z",
    "atApprovedLocation": true,
    "isAtApprovedLocation": true,
    "notes": {
      "content": "Started late due to traffic in CA 237",
      "contentType": "text"
    }
  },
  "clockOutEvent": null,
  "notes": {
    "content": "8 To 5 Inventory management",
    "contentType": "text"
  },
  "breaks": [
    {
      "breakId": "string",
      "notes": {
        "content": "Lunch break",
        "contentType": "text"
      },
      "start": {
        "dateTime": "2019-03-18T02:00:00.000Z",
        "atApprovedLocation": true,
        "isAtApprovedLocation": true,
        "notes": {
          "content": "Reduced break to make up for lost time",
          "contentType": "text"
        }
      },
      "end": null
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create timeCard",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

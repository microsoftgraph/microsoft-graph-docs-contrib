---
title: "Replace timeOff"
description: "Replace an existing timeOff object."
ms.date: 11/21/2024
author: "victorcheng"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Replace timeOff

Namespace: microsoft.graph

Replace an existing [timeOff](../resources/timeoff.md) object.

If the specified [timeOff](../resources/timeoff.md) object doesn't exist, this method returns `404 Not found`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "timeoff_put" } -->
[!INCLUDE [permissions-table](../includes/permissions/timeoff-put-permissions.md)]

> **Note**: This API supports admin permissions. Users with admin roles can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /teams/{teamId}/schedule/timesOff/{timeOffId}
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.  |
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body

In the request body, supply a modified JSON representation of a [timeOff](../resources/timeoff.md) object.

|Property|Type|Description|
|:---|:---|:---|
| draftTimeOff		| [timeOffItem](../resources/timeoffitem.md)        |The draft version of this **timeOff** item that is viewable by managers. It must be shared before it is visible to team members. Either draftTimeOff or sharedTimeOff should be null.|
| isStagedForDeletion   | Boolean                      | The **timeOff** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md). Optional|
| sharedTimeOff 	| [timeOffItem](../resources/timeoffitem.md)  |The shared version of this **timeOff** that is viewable by both employees and managers. Updates to the **sharedTimeOff** property send notifications to users in the Teams client. Either draftTimeOff or sharedTimeOff should be null.|
| userId 			| String      |ID of the user assigned to the **timeOff**. Required.|


## Response

If successful, this method returns a `200 OK` response code and a [timeOff](../resources/timeoff.md) object in the response body.

## Example

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "timeoff-put"
}-->
```http
PUT https://graph.microsoft.com/v1.0/teams/{teamId}/schedule/timesOff/{timeOffId}
Content-type: application/json
Prefer: return=representation

{
    "userId": "aa162a04-bec6-4b81-ba99-96caa7b2b24d",
    "sharedTimeOff": {
        "timeOffReasonId": "TOR_29a5ba96-c7ef-4e76-bec6-055323746314",
        "startDateTime": "2024-10-10T19:00:00Z",
        "endDateTime": "2024-10-10T20:00:00Z",
        "theme": "blue"
    },
    "draftTimeOff": null
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/timeoff-put-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.timeOff"
} -->

```http
HTTP/1.1 204 No Content
{}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Replace an existing timeOff",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


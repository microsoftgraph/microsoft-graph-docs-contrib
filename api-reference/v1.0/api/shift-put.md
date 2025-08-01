---
title: "Replace shift"
description: "Replace an existing shift."
ms.date: 11/21/2024
author: "victorcheng"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Replace shift

Namespace: microsoft.graph

Replace an existing [shift](../resources/shift.md).

If the specified [shift](../resources/shift.md) doesn't exist, this method returns `404 Not found`.

The duration of a shift can't be less than one minute or longer than 24 hours.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "shift_put" } -->
[!INCLUDE [permissions-table](../includes/permissions/shift-put-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /teams/{teamId}/schedule/shifts/{shiftId}
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.  |
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
| draftShift           | [shiftItem](../resources/shiftitem.md)     | Draft changes in the **shift**. Draft changes are only visible to managers. The changes are visible to employees when they're [shared](../api/schedule-share.md), which copies the changes from the **draftShift** to the **sharedShift** property. Either **draftOpenShift** or **sharedOpenShift** should be `null`. |
| isStagedForDeletion   | Boolean                           | The **shift** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md). Optional. |
| schedulingGroupId    | String                      | ID of the scheduling group the **shift** is part of. Required. |
| sharedShift          | [shiftItem](../resources/shiftitem.md)     | The shared version of this **shift** that is viewable by both employees and managers. Updates to the **sharedShift** property send notifications to users in the Teams client. Either **draftOpenShift** or **sharedOpenShift** should be `null`. |
| userId               | String                      | ID of the user assigned to the **shift**. Required. |

## Response

If successful, this method returns a `204 No Content` response code and empty content. If the request specifies the `Prefer` header with `return=representation` preference, then this method returns a `200 OK` response code and a [shift](../resources/shift.md) object in the response body.

## Example

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "shift-put"
}-->
```http
PUT https://graph.microsoft.com/v1.0/teams/{teamId}/schedule/shifts/{shiftId}
Content-type: application/json

{
  "userId": "5ca83ce7-291d-43b7-bf53-af79eef4bc1d",
  "draftShift": {
    "displayName": null,
    "startDateTime": "2024-10-08T15:00:00Z",
    "endDateTime": "2024-10-09T00:00:00Z",
    "theme": "blue",
    "notes": null,
    "activities": []
  },
  "sharedShift": null,
  "isStagedForDeletion": false
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/shift-put-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- {
  "type": "#page.annotation",
  "suppressions": [
  ]
}-->


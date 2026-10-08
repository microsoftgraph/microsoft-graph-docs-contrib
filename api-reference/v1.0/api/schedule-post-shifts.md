---
title: "Create shift"
description: "Create a new shift."
ms.date: 11/21/2024
author: "victorcheng"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Create shift

Namespace: microsoft.graph

Create a new [shift](../resources/shift.md) instance in a [schedule](../resources/schedule.md).

The duration of a shift cannot be less than 1 minute or longer than 24 hours.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "schedule_post_shifts" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedule-post-shifts-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{teamId}/schedule/shifts
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body

In the request body, supply a JSON representation of the modified [shift](../resources/shift.md) object.

The following table lists the properties that you can use when you create a **shift** object.

|Property|Type|Description|
|:---|:---|:---|
| draftShift           | [shiftItem](../resources/shiftitem.md)     | Draft changes in the **shift**. Draft changes are only visible to managers. The changes are visible to employees when they're [shared](../api/schedule-share.md), which copies the changes from the **draftShift** to the **sharedShift** property. Eiher **draShift** or **sharedShift** should be `null`.|
| isStagedForDeletion   | Boolean                           | The **shift** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md). Optional. |
| schedulingGroupId    | String                      | ID of the scheduling group the **shift** is part of. Required. |
| sharedShift          | [shiftItem](../resources/shiftitem.md)     | The shared version of this **shift** that is viewable by both employees and managers. Updates to the **sharedShift** property send notifications to users in the Teams client. Eiher **draShift** or **sharedShift** should be `null`.|
| userId               | String                      | ID of the user assigned to the **shift**. Required. |

## Response

If successful, this method returns a `201 Created` response code and a [shift](../resources/shift.md) object in the response body.

## Example

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "schedule-post-shifts"
}-->
```http
POST https://graph.microsoft.com/v1.0/teams/{teamId}/schedule/shifts
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/schedule-post-shifts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/schedule-post-shifts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/schedule-post-shifts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/schedule-post-shifts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/schedule-post-shifts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/schedule-post-shifts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/schedule-post-shifts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.shift"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "SHFT_0f004eda-32a6-4f0c-a076-18f76d997a55",
  "createdDateTime": "2024-11-08T23:49:13.877Z",
  "lastModifiedDateTime": "2024-11-08T23:49:13.877Z",
  "schedulingGroupId": "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a",
  "userId": "5ca83ce7-291d-43b7-bf53-af79eef4bc1d",
  "sharedShift": null,
  "lastModifiedBy": {
    "application": null,
    "device": null,
    "user": {
      "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
      "displayName": "John Doe",
      "userIdentityType": "aadUser",
      "tenantId": null
    }
  },
  "draftShift": {
    "displayName": null,
    "startDateTime": "2024-10-08T15:00:00Z",
    "endDateTime": "2024-10-09T00:00:00Z",
    "theme": "blue",
    "notes": null,
    "activities": []
  },
  "isStagedForDeletion": false
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Creates a new shift",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


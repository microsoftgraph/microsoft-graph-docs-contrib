---
title: "Create timeOff"
description: "Create a new timeOff."
ms.date: 11/21/2024
author: "victorcheng"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Create timeOff

Namespace: microsoft.graph

Create a new [timeOff](../resources/timeoff.md) instance in a [schedule](../resources/schedule.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "schedule_post_timesoff" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedule-post-timesoff-permissions.md)]

> **Note**: This API supports admin permissions. Users with admin roles can access groups that they aren't a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{teamId}/schedule/timesOff
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.  |
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body

In the request body, supply a JSON representation of the modified [timeOff](../resources/timeoff.md) object.

The following table lists the properties that you can use when you create a **timeOff** object.


|Property|Type|Description|
|:---|:---|:---|
| draftTimeOff		| [timeOffItem](../resources/timeoffitem.md)        |The draft version of this **timeOff** item that is viewable by managers. It must be shared before it is visible to team members. Either **draftOpenShift** or **sharedOpenShift** should be `null`.|
| isStagedForDeletion   | Boolean                      | The **timeOff** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md). Optional|
| sharedTimeOff 	| [timeOffItem](../resources/timeoffitem.md)  |The shared version of this **timeOff** that is viewable by both employees and managers. Updates to the **sharedTimeOff** property send notifications to users in the Teams client. Either **draftOpenShift** or **sharedOpenShift** should be `null`.|
| userId 			| String      |ID of the user assigned to the **timeOff**. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [timeOff](../resources/timeoff.md) object in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "timeoff-post"
}-->
```http
POST https://graph.microsoft.com/v1.0/teams/{teamId}/schedule/timesOff
Content-type: application/json

{
  "userId": "aa162a04-bec6-4b81-ba99-96caa7b2b24d",
  "sharedTimeOff": {
    "timeOffReasonId": "TOR_29a5ba96-c7ef-4e76-bec6-055323746314",
    "startDateTime": "2024-10-10T19:00:00Z",
    "endDateTime": "2024-10-10T20:00:00Z",
    "theme": "blue"
  },
  "draftTimeOff": null,
  "isStagedForDeletion": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/timeoff-post-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/timeoff-post-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/timeoff-post-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/timeoff-post-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/timeoff-post-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/timeoff-post-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/timeoff-post-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type":"microsoft.graph.timeOff"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#teams('48ba9e52-8d25-41c7-bbe7-5ee6346eec0d')/schedule/timesOff/$entity",
  "@odata.etag": "\"40021ee2-0000-0c00-0000-672ea2790000\"",
  "id": "SHFT_d0941bce-2229-43f5-b1cd-c9e2eaf592cf",
  "createdDateTime": "2024-11-08T23:44:56.913Z",
  "lastModifiedDateTime": "2024-11-08T23:44:56.913Z",
  "userId": "aa162a04-bec6-4b81-ba99-96caa7b2b24d",
  "draftTimeOff": null,
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
  "sharedTimeOff": {
    "timeOffReasonId": "TOR_29a5ba96-c7ef-4e76-bec6-055323746314",
    "startDateTime": "2024-10-10T19:00:00Z",
    "endDateTime": "2024-10-10T20:00:00Z",
    "theme": "blue"
  },
  "isStagedForDeletion": false
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Creates a new timeOff",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


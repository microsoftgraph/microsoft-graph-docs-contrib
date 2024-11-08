---
title: "Create timeOff"
description: "Create a new timeOff."
author: "akumar39"
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

> **Note**: This API supports admin permissions. Users with admin roles can access groups that they are not a member of.

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
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body

In the request body, supply a modified JSON representation of a [timeOff](../resources/timeoff.md) object.

|Property|Type|Description|
|:---|:---|:---|
| draftTimeOff		| [timeOffItem](timeoffitem.md)        |The draft version of this **timeOff** item that is viewable by managers. It must be shared before it is visible to team members. Either draftTimeOff or sharedTimeOff should be null.|
| isStagedForDeletion   | Boolean                      | The **timeOff** is marked for deletion, a process that is finalized when the schedule is [shared](../api/schedule-share.md). Optional|
| sharedTimeOff 	| [timeOffItem](timeoffitem.md)  |The shared version of this **timeOff** that is viewable by both employees and managers. Updates to the **sharedTimeOff** property send notifications to users in the Teams client. Either draftTimeOff or sharedTimeOff should be null.|
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
  "@odata.type": "#microsoft.graph.timeOff",
  "sharedTimeOff": {
    "@odata.type": "microsoft.graph.timeOffItem"
  },
  "draftTimeOff": {
    "@odata.type": "microsoft.graph.timeOffItem"
  },
  "userId": "String",
  "isStagedForDeletion": "Boolean"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/timeoff-post-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/timeoff-post-cli-snippets.md)]
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
  "@odata.type": "#microsoft.graph.timeOff",
  "id": "d8aa6cc9-7a1a-fb34-ed9c-e1ac3dcd54c8",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "sharedTimeOff": {
    "@odata.type": "microsoft.graph.timeOffItem"
  },
  "draftTimeOff": {
    "@odata.type": "microsoft.graph.timeOffItem"
  },
  "userId": "String",
  "isStagedForDeletion": "Boolean"
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


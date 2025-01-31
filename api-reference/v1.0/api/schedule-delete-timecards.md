---
title: "Delete timeCard"
description: "Delete a timeCard instance in the schedule."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# Delete timeCard

Namespace: microsoft.graph

Delete a [timeCard](../resources/timecard.md) instance in a [schedule](../resources/schedule.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "schedule-delete-timecards-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/timecard-delete-permissions.md)]

> [!IMPORTANT]
> When you use the Schedule.ReadWrite.All application permission, you must include the `MS-APP-ACTS-AS` header in the request.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /teams/{teamsId}/schedule/timeCards/{timeCardId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| MS-APP-ACTS-AS | The ID of the user on behalf of whom the app is acting. Required when you use the application permission scope. |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_timecard"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/teams/{teamsId}/schedule/timeCards/{timeCardId}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


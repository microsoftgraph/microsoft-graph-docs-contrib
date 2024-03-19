---
title: "workingTimeSchedule: startWorkingTime"
description: "Trigger the policies associated with the start of working hours for a specific user."
author: "galalalym"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# workingTimeSchedule: startWorkingTime

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Trigger the policies associated with the start of working hours for a specific user.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "workingtimeschedule-startworkingtime-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/workingtimeschedule-startworkingtime-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{userId}/solutions/schedule/startWorkingTime
```

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|userId|String|User ID that started working.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "workingtimeschedulethis.startworkingtime"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/ccdf8279-8a3f-4c10-af1a-4a7f46b1489f/solutions/schedule/startWorkingTime
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```

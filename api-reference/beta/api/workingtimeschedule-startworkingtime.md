---
title: "workingTimeSchedule: startWorkingTime"
description: "Trigger the policies associated with the start of working hours for a specific user."
author: "galalalym"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 09/10/2024
---

# workingTimeSchedule: startWorkingTime

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Trigger the policies associated with the start of working hours for a specific user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workingtimeschedule_startworkingtime" } -->
[!INCLUDE [permissions-table](../includes/permissions/workingtimeschedule-startworkingtime-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /users/{userId}/solutions/workingTimeSchedule/startWorkingTime
```

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|userId|String|ID of the user whose working hours started.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "workingtimeschedulethis.startworkingtime"
}
-->
```http
POST https://graph.microsoft.com/beta/users/ccdf8279-8a3f-4c10-af1a-4a7f46b1489f/solutions/workingTimeSchedule/startWorkingTime
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/workingtimeschedulethisstartworkingtime-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/workingtimeschedulethisstartworkingtime-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/workingtimeschedulethisstartworkingtime-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/workingtimeschedulethisstartworkingtime-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/workingtimeschedulethisstartworkingtime-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/workingtimeschedulethisstartworkingtime-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 202 Accepted
```

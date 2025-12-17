---
title: "Delete workPlanRecurrence"
description: "Delete a workPlanRecurrence object from your own work plan."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/10/2025
---

# Delete workPlanRecurrence

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [workPlanRecurrence](../resources/workplanrecurrence.md) object from your own work plan.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workplanrecurrence_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/workplanrecurrence-delete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /me/settings/workHoursAndLocations/recurrences/{id}
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

When using the `/users/{id}` endpoint, the ID must be your own user ID.

<!-- { "blockType": "ignored" } -->
```http
DELETE /users/{id | userPrincipalName}/settings/workHoursAndLocations/recurrences/{id}
```

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "workplanrecurrence_delete"
} -->

```http
DELETE https://graph.microsoft.com/beta/me/settings/workHoursAndLocations/recurrences/AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0A62lTFlb-Zkev22NJlM7SMwADaJA3YgAA
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

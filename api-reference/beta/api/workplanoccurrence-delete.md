---
title: "Delete workPlanOccurrence"
description: "Delete a workPlanOccurrence object."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/20/2024
---

# Delete workPlanOccurrence

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a workPlanOccurrence object. Only time-off occurrences can be deleted. Occurrences generated from recurrences cannot be deleted.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workplanoccurrence_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/workplanoccurrence-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
} -->

```http
DELETE /me/settings/workHoursAndLocations/occurrences/{id}
DELETE /users/{id | userPrincipalName}/settings/workHoursAndLocations/occurrences/{id}
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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "workplanoccurrence_delete"
} -->

```http
DELETE https://graph.microsoft.com/beta/me/settings/workHoursAndLocations/occurrences/{id}
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
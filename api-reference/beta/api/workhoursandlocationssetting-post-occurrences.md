---
title: "Create workPlanOccurrence"
description: "Create a new workPlanOccurrence object (time-off only)."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/20/2024
---

# Create workPlanOccurrence

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new workPlanOccurrence object. Only time-off occurrences can be created directly. Other occurrences are auto-generated from recurrences.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workhoursandlocationssetting_post_occurrences" } -->
[!INCLUDE [permissions-table](../includes/permissions/workhoursandlocationssetting-post-occurrences-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
} -->

```http
POST /me/settings/workHoursAndLocations/occurrences
POST /users/{id | userPrincipalName}/settings/workHoursAndLocations/occurrences
```

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |

## Request body

In the request body, supply a JSON representation of a [workPlanOccurrence](../resources/workplanoccurrence.md) object. The workLocationType must be set to `timeOff`.

## Response

If successful, this method returns a `201 Created` response code and a [workPlanOccurrence](../resources/workplanoccurrence.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_workplanoccurrence"
} -->

```http
POST https://graph.microsoft.com/beta/me/settings/workHoursAndLocations/occurrences
Content-type: application/json

{
  "start": {
    "dateTime": "2024-01-15T00:00:00.0000000",
    "timeZone": "UTC"
  },
  "end": {
    "dateTime": "2024-01-15T23:59:59.0000000",
    "timeZone": "UTC"
  },
  "workLocationType": "timeOff",
  "timeOffDetails": {
    "subject": "Personal Day",
    "isAllDay": true
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-workplanoccurrence-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-workplanoccurrence-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-workplanoccurrence-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-workplanoccurrence-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-workplanoccurrence-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-workplanoccurrence-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-workplanoccurrence-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-workplanoccurrence-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workPlanOccurrence"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "id": "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAABvv6cAAA=",
  "recurrenceId": null,
  "start": {
    "dateTime": "2024-01-15T00:00:00.0000000",
    "timeZone": "UTC"
  },
  "end": {
    "dateTime": "2024-01-15T23:59:59.0000000",
    "timeZone": "UTC"
  },
  "workLocationType": "timeOff",
  "timeOffDetails": {
    "subject": "Personal Day",
    "isAllDay": true
  }
}
```
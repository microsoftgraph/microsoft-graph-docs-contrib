---
title: "Update workPlanOccurrence"
description: "Update the properties of a workPlanOccurrence object in your own work plan."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/10/2025
---

# Update workPlanOccurrence

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [workPlanOccurrence](../resources/workplanoccurrence.md) object in your own work plan. Updates require the full occurrence object to be provided (PUT semantics). PATCH isn't supported.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workplanoccurrence_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/workplanoccurrence-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PUT /me/settings/workHoursAndLocations/occurrences/{id}
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

When using the `/users/{id}` endpoint, the ID must be your own user ID.

<!-- { "blockType": "ignored" } -->
```http
PUT /users/{id | userPrincipalName}/settings/workHoursAndLocations/occurrences/{id}
```

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |

## Request body

In the request body, supply a JSON representation of a [workPlanOccurrence](../resources/workplanoccurrence.md) object.

## Response

If successful, this method returns a `200 OK` response code and an updated [workPlanOccurrence](../resources/workplanoccurrence.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "workplanoccurrence_update"
} -->

```http
PUT https://graph.microsoft.com/beta/me/settings/workHoursAndLocations/occurrences/QAAuAAAAAB2EAxGqZhHNm8gAqgAvxFoNAOtpUxZW-2ZHr9tjSZTO0jMAA2iQN2IAABA=
Content-type: application/json

{
  "start": {
    "dateTime": "2025-12-15T08:00:00.0000000",
    "timeZone": "Pacific Standard Time"
  },
  "end": {
    "dateTime": "2025-12-15T12:00:00.0000000",
    "timeZone": "Pacific Standard Time"
  },
  "workLocationType": "timeOff",
  "timeOffDetails": {
    "subject": "Doctor Appointment",
    "isAllDay": false
  }
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workPlanOccurrence"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAABvv6cAAA=",
  "recurrenceId": null,
  "start": {
    "dateTime": "2025-12-15T08:00:00.0000000",
    "timeZone": "Pacific Standard Time"
  },
  "end": {
    "dateTime": "2025-12-15T12:00:00.0000000",
    "timeZone": "Pacific Standard Time"
  },
  "workLocationType": "timeOff",
  "timeOffDetails": {
    "subject": "Doctor Appointment",
    "isAllDay": false
  }
}
```

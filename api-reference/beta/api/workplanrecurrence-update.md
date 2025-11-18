---
title: "Update workPlanRecurrence"
description: "Update the properties of a workPlanRecurrence object in your own work plan."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/20/2024
---

# Update workPlanRecurrence

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [workPlanRecurrence](../resources/workplanrecurrence.md) object in your own work plan. Updates require the full recurrence object to be provided (PUT semantics). PATCH isn't supported.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workplanrecurrence_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/workplanrecurrence-update-permissions.md)]

## HTTP request

```http
PUT /me/settings/workHoursAndLocations/recurrences/{id}
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

When using the `/users/{id}` endpoint, the ID must be your own user ID.

```http
PUT /users/{id | userPrincipalName}/settings/workHoursAndLocations/recurrences/{id}
```

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |

## Request body

In the request body, supply a JSON representation of a [workPlanRecurrence](../resources/workplanrecurrence.md) object.

## Response

If successful, this method returns a `200 OK` response code and an updated [workPlanRecurrence](../resources/workplanrecurrence.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "workplanrecurrence_update"
} -->

```http
PUT https://graph.microsoft.com/beta/me/settings/workHoursAndLocations/recurrences/AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0A62lTFlb-Zkev22NJlM7SMwADaJA3YgAA
Content-type: application/json

{
  "start": {
    "dateTime": "2024-01-01T08:00:00.0000000",
    "timeZone": "UTC"
  },
  "end": {
    "dateTime": "2024-01-01T16:00:00.0000000",
    "timeZone": "UTC"
  },
  "workLocationType": "remote",
  "recurrence": {
    "pattern": {
      "type": "weekly",
      "interval": 1,
      "daysOfWeek": ["tuesday", "thursday"]
    },
    "range": {
      "type": "endDate",
      "startDate": "2024-01-01",
      "endDate": "2024-12-31"
    }
  }
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workPlanRecurrence"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "AAMkAGVmMDEzMTM4LTZmYWUtNDdkNC1hMDZiLTU1OGY5OTZhYmY4OABGAAAAAAAiQ8W967B7TKBjgx9rVEURBwAiIsqMbYjsT5e-T7KzowPTAAAAAAENAAAiIsqMbYjsT5e-T7KzowPTAAABvv6bAAA=",
  "start": {
    "dateTime": "2024-01-01T08:00:00.0000000",
    "timeZone": "UTC"
  },
  "end": {
    "dateTime": "2024-01-01T16:00:00.0000000",
    "timeZone": "UTC"
  },
  "workLocationType": "remote",
  "recurrence": {
    "pattern": {
      "type": "weekly",
      "interval": 1,
      "daysOfWeek": ["tuesday", "thursday"]
    },
    "range": {
      "type": "endDate",
      "startDate": "2024-01-01",
      "endDate": "2024-12-31"
    }
  }
}
```
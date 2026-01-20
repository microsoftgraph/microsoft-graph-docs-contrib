---
title: "Create workPlanRecurrence"
description: "Create a new workPlanRecurrence object in your own work plan."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/10/2025
---

# Create workPlanRecurrence

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [workPlanRecurrence](../resources/workplanrecurrence.md) object in your own work plan.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workhoursandlocationssetting_post_recurrences" } -->
[!INCLUDE [permissions-table](../includes/permissions/workhoursandlocationssetting-post-recurrences-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
} -->

```http
POST /me/settings/workHoursAndLocations/recurrences
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

When using the `/users/{id}` endpoint, the ID must be your own user ID.

<!-- { "blockType": "ignored" } -->
```http
POST /users/{id | userPrincipalName}/settings/workHoursAndLocations/recurrences
```

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |

## Request body

In the request body, supply a JSON representation of a [workPlanRecurrence](../resources/workplanrecurrence.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [workPlanRecurrence](../resources/workplanrecurrence.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "workhoursandlocationssetting_post_recurrences"
} -->

```http
POST https://graph.microsoft.com/beta/me/settings/workHoursAndLocations/recurrences
Content-type: application/json

{
  "start": {
    "dateTime": "2025-12-11T09:00:00.0000000",
    "timeZone": "Pacific Standard Time"
  },
  "end": {
    "dateTime": "2025-12-11T18:00:00.0000000",
    "timeZone": "Pacific Standard Time"
  },
  "workLocationType": "office",
  "recurrence": {
    "pattern": {
      "type": "weekly",
      "interval": 1,
      "firstDayOfWeek": "sunday",
      "daysOfWeek": ["thursday"]
    },
    "range": {
      "type": "noEnd",
      "startDate": "2025-12-11",
      "recurrenceTimeZone": "Pacific Standard Time"
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
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('15b9b296-dac5-43d0-8b94-93bb67eef619')/settings/workHoursAndLocations/recurrences/$entity",
  "id": "AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0A62lTFlb-Zkev22NJlM7SMwADxDWWKgAA",
  "workLocationType": "office",
  "placeId": null,
  "start": {
    "dateTime": "2025-12-11T09:00:00.0000000",
    "timeZone": "Pacific Standard Time"
  },
  "end": {
    "dateTime": "2025-12-11T18:00:00.0000000",
    "timeZone": "Pacific Standard Time"
  },
  "recurrence": {
    "pattern": {
      "type": "weekly",
      "interval": 1,
      "firstDayOfWeek": "sunday",
      "daysOfWeek": [
        "thursday"
      ],
      "month": 0,
      "dayOfMonth": 0,
      "index": "first"
    },
    "range": {
      "type": "noEnd",
      "startDate": "2025-12-11",
      "endDate": null,
      "recurrenceTimeZone": "Pacific Standard Time",
      "numberOfOccurrences": 0
    }
  }
}
```

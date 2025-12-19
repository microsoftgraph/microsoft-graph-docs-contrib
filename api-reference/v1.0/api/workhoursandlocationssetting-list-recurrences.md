---
title: "List recurrences"
description: "Get the recurrences from your own work plan via the recurrences navigation property."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/19/2025
---

# List recurrences

Namespace: microsoft.graph

Get the [recurrences](../resources/workplanrecurrence.md) from your own work plan via the **recurrences** navigation property.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workhoursandlocationssetting_list_recurrences" } -->
[!INCLUDE [permissions-table](../includes/permissions/workhoursandlocationssetting-list-recurrences-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
} -->

```http
GET /me/settings/workHoursAndLocations/recurrences
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

When using the `/users/{id}` endpoint, the ID must be your own user ID.

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | userPrincipalName}/settings/workHoursAndLocations/recurrences
```

## Optional query parameters

This method supports the `$select` and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [workPlanRecurrence](../resources/workplanrecurrence.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "workhoursandlocationssetting_list_recurrences"
} -->
```http
GET https://graph.microsoft.com/v1.0/me/settings/workHoursAndLocations/recurrences
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.workPlanRecurrence)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('12345678-1234-1234-1234-123456789012')/settings/workHoursAndLocations/recurrences",
  "value": [
    {
      "id": "AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0A62lTFlb-Zkev22NJlM7SMwADowImVQAA",
      "workLocationType": "remote",
      "placeId": null,
      "start": {
        "dateTime": "2025-12-08T09:00:00.0000000",
        "timeZone": "Pacific Standard Time"
      },
      "end": {
        "dateTime": "2025-12-08T18:00:00.0000000",
        "timeZone": "Pacific Standard Time"
      },
      "recurrence": {
        "pattern": {
          "type": "weekly",
          "interval": 1,
          "firstDayOfWeek": "sunday",
          "daysOfWeek": [
            "monday"
          ],
          "month": 0,
          "dayOfMonth": 0,
          "index": "first"
        },
        "range": {
          "type": "noEnd",
          "startDate": "2025-12-08",
          "endDate": null,
          "recurrenceTimeZone": "Pacific Standard Time",
          "numberOfOccurrences": 0
        }
      }
    }
  ]
}
```

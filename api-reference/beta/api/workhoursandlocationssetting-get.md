---
title: "Get workHoursAndLocations"
description: "Get the properties and relationships of a user's work hours and location settings."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/20/2024
---

# Get workHoursAndLocations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a user's [workHoursAndLocationsSetting](../resources/workhoursandlocationssetting.md). This includes the location sharing preferences and navigation properties to work plan recurrences and occurrences.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workhoursandlocations_get" } -->
| Permission type | Least privileged permissions | Higher privileged permissions |
|:----------------|:-----------------------------|:------------------------------|
| Delegated (work or school account) | Calendars.ReadBasic | Calendars.Read, Calendars.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. | Not supported. |
| Application | Not supported. | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/settings/workHoursAndLocations
GET /users/{id | userPrincipalName}/settings/workHoursAndLocations
```

## Optional query parameters

This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

| Parameter | Description | Example |
|:----------|:------------|:--------|
| `$expand` | Expand related entities | `$expand=workPlanRecurrences,workPlanOccurrences` |
| `$select` | Select specific properties | `$select=maxSharedWorkLocationDetails` |

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [workHoursAndLocationsSetting](../resources/workhoursandlocationssetting.md) object in the response body.

## Examples

### Example 1: Get basic work hours and location settings

#### Request

The following example shows a request to get basic work hours and location settings.

```http
GET https://graph.microsoft.com/beta/me/settings/workHoursAndLocations
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workHoursAndLocationsSetting"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('12345678-1234-1234-1234-123456789012')/settings/workHoursAndLocations/$entity",
  "@odata.type": "microsoft.graph.workHoursAndLocationsSetting",
  "maxSharedWorkLocationDetails": "approximate"
}
```

### Example 2: Get work hours and locations with expanded relationships

#### Request

The following example shows a request to get work hours and locations with expanded recurrences and occurrences.

# [HTTP](#tab/http)
```http
GET https://graph.microsoft.com/beta/me/settings/workHoursAndLocations?$expand=recurrences,occurrences
```

#### Response

The following example shows the response with expanded relationships.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workHoursAndLocationsSetting"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('12345678-1234-1234-1234-123456789012')/settings/workHoursAndLocations/$entity",
  "@odata.type": "microsoft.graph.workHoursAndLocationsSetting",
  "maxSharedWorkLocationDetails": "approximate",
  "recurrences": [
    {
      "id": "recurrence-001",
      "displayName": "Office Days - Mon/Wed/Fri",
      "startDate": "2024-01-01",
      "recurrencePattern": {
        "type": "weekly",
        "daysOfWeek": ["monday", "wednesday", "friday"]
      },
      "workHours": {
        "start": "09:00:00",
        "end": "17:00:00"
      },
      "workLocation": {
        "locationType": "office",
        "displayName": "Main Office"
      }
    }
  ],
  "occurrences": [
    {
      "id": "occurrence-001",
      "displayName": "Client Meeting - Downtown",
      "startDateTime": "2024-12-20T10:00:00-05:00",
      "endDateTime": "2024-12-20T15:00:00-05:00",
      "workLocation": {
        "locationType": "clientSite",
        "displayName": "Client Office"
      },
      "status": "confirmed"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-12-20 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get workHoursAndLocations",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
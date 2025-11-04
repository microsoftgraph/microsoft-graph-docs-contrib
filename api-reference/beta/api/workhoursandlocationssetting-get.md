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

Get the properties and relationships of a user's [workHoursAndLocations](../resources/workhoursandlocationssetting.md) settings. This includes the user's current location, default work hours, location sharing preferences, and associated work plan patterns.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workhoursandlocations_get" } -->
| Permission type | Least privileged permissions | Higher privileged permissions |
|:----------------|:-----------------------------|:------------------------------|
| Delegated (work or school account) | Calendars.ReadBasic | Calendars.Read, Calendars.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. | Not supported. |
| Application | Calendars.ReadBasic | Calendars.Read, Calendars.ReadWrite |

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
| `$select` | Select specific properties | `$select=timeZone,currentLocation,enableLocationSharing` |

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [workHoursAndLocations](../resources/workhoursandlocationssetting.md) object in the response body.

## Examples

### Example 1: Get basic work hours and location settings

#### Request

The following example shows a request to get basic work hours and location settings.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_workhoursandlocations_basic"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/settings/workHoursAndLocations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-workhoursandlocations-basic-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-workhoursandlocations-basic-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-workhoursandlocations-basic-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-workhoursandlocations-basic-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-workhoursandlocations-basic-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-workhoursandlocations-basic-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-workhoursandlocations-basic-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workHoursAndLocations"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('12345678-1234-1234-1234-123456789012')/workHoursAndLocations/$entity",
  "id": "550e8400-e29b-41d4-a716-446655440000",
  "timeZone": "America/New_York",
  "currentLocation": {
    "locationType": "office",
    "displayName": "Main Office",
    "address": {
      "street": "123 Business Ave",
      "city": "New York",
      "state": "NY",
      "postalCode": "10001",
      "countryOrRegion": "United States"
    },
    "coordinates": {
      "latitude": 40.7128,
      "longitude": -74.0060
    },
    "description": "Building A, Floor 5",
    "isDefault": true
  },
  "defaultWorkHours": {
    "start": "09:00:00",
    "end": "17:00:00"
  },
  "enableLocationSharing": true,
  "allowOverlapBookings": false
}
```

### Example 2: Get work hours and locations with expanded relationships

#### Request

The following example shows a request to get work hours and locations with expanded work plan recurrences and occurrences.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_workhoursandlocations_expanded"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/settings/workHoursAndLocations?$expand=workPlanRecurrences,workPlanOccurrences
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-workhoursandlocations-expanded-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-workhoursandlocations-expanded-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-workhoursandlocations-expanded-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-workhoursandlocations-expanded-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-workhoursandlocations-expanded-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-workhoursandlocations-expanded-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-workhoursandlocations-expanded-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response with expanded relationships.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workHoursAndLocations"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('12345678-1234-1234-1234-123456789012')/workHoursAndLocations/$entity",
  "id": "550e8400-e29b-41d4-a716-446655440000",
  "timeZone": "America/New_York",
  "currentLocation": {
    "locationType": "remote",
    "displayName": "Home Office",
    "description": "Working from home today",
    "isDefault": false
  },
  "defaultWorkHours": {
    "start": "09:00:00",
    "end": "17:00:00"
  },
  "enableLocationSharing": true,
  "allowOverlapBookings": false,
  "workPlanRecurrences": [
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
        "displayName": "Main Office",
        "address": {
          "street": "123 Business Ave",
          "city": "New York",
          "state": "NY",
          "postalCode": "10001",
          "countryOrRegion": "United States"
        }
      },
      "isActive": true,
      "priority": 1
    }
  ],
  "workPlanOccurrences": [
    {
      "id": "occurrence-001",
      "displayName": "Client Meeting - Downtown",
      "startDateTime": "2024-12-20T10:00:00-05:00",
      "endDateTime": "2024-12-20T15:00:00-05:00",
      "workLocation": {
        "locationType": "clientSite",
        "displayName": "Client Office",
        "address": {
          "street": "456 Client Street",
          "city": "New York",
          "state": "NY",
          "postalCode": "10002",
          "countryOrRegion": "United States"
        }
      },
      "status": "confirmed",
      "notes": "Quarterly business review meeting",
      "isAllDay": false
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
---
title: "Update workHoursAndLocations"
description: "Update the properties of a user's work hours and location settings."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/20/2024
---

# Update workHoursAndLocations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a user's [workHoursAndLocations](../resources/workhoursandlocationssetting.md) settings. This includes updating the time zone, default work hours, location sharing preferences, and booking policies.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workhoursandlocations_update" } -->
| Permission type | Least privileged permissions | Higher privileged permissions |
|:----------------|:-----------------------------|:------------------------------|
| Delegated (work or school account) | Calendars.ReadWrite | Not applicable. |
| Delegated (personal Microsoft account) | Not supported. | Not supported. |
| Application | Calendars.ReadWrite | Not applicable. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /me/settings/workHoursAndLocations
PATCH /users/{id | userPrincipalName}/settings/workHoursAndLocations
```

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property | Type | Description |
|:---------|:-----|:------------|
| timeZone | String | The time zone for the user's work hours using IANA time zone format. |
| currentLocation | [workLocation](../resources/worklocation.md) | The user's current working location. |
| defaultWorkHours | [timeRange](../resources/timerange.md) | The user's default working hours when no specific work plan is defined. |
| enableLocationSharing | Boolean | Indicates whether the user allows their location to be shared with colleagues. |
| allowOverlapBookings | Boolean | Indicates whether meetings can be scheduled during busy times in the user's work plan. |

## Response

If successful, this method returns a `200 OK` response code and an updated [workHoursAndLocations](../resources/workhoursandlocationssetting.md) object in the response body.

## Examples

### Example 1: Update time zone and default work hours

#### Request

The following example shows a request to update the user's time zone and default work hours.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_workhoursandlocations_timezone"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/settings/workHoursAndLocations
Content-Type: application/json

{
  "timeZone": "Europe/London",
  "defaultWorkHours": {
    "start": "08:30:00",
    "end": "16:30:00"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-workhoursandlocations-timezone-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-workhoursandlocations-timezone-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-workhoursandlocations-timezone-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-workhoursandlocations-timezone-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-workhoursandlocations-timezone-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-workhoursandlocations-timezone-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-workhoursandlocations-timezone-python-snippets.md)]
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
  "timeZone": "Europe/London",
  "currentLocation": {
    "locationType": "office",
    "displayName": "London Office",
    "address": {
      "street": "25 King's Road",
      "city": "London",
      "postalCode": "SW3 4RP",
      "countryOrRegion": "United Kingdom"
    }
  },
  "defaultWorkHours": {
    "start": "08:30:00",
    "end": "16:30:00"
  },
  "enableLocationSharing": true,
  "allowOverlapBookings": false
}
```

### Example 2: Update location sharing and booking preferences

#### Request

The following example shows a request to update location sharing and booking overlap settings.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_workhoursandlocations_preferences"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/settings/workHoursAndLocations
Content-Type: application/json

{
  "enableLocationSharing": false,
  "allowOverlapBookings": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-workhoursandlocations-preferences-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-workhoursandlocations-preferences-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-workhoursandlocations-preferences-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-workhoursandlocations-preferences-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-workhoursandlocations-preferences-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-workhoursandlocations-preferences-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-workhoursandlocations-preferences-python-snippets.md)]
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
    "locationType": "remote",
    "displayName": "Home Office",
    "description": "Privacy mode enabled - location not shared"
  },
  "defaultWorkHours": {
    "start": "09:00:00",
    "end": "17:00:00"
  },
  "enableLocationSharing": false,
  "allowOverlapBookings": true
}
```

## Error responses

If the request fails, the API returns standard HTTP error codes. Common error scenarios include:

- **400 Bad Request**: Invalid property values or malformed request body
- **403 Forbidden**: User doesn't have permission to update work hours and locations
- **422 Unprocessable Entity**: Invalid time zone format or conflicting property values

## Remarks

- Only properties included in the request body are updated; other properties remain unchanged
- Time zone changes affect the interpretation of all time-related properties in work plans
- Location sharing settings control whether the user's location is visible to colleagues and scheduling systems
- The allowOverlapBookings setting determines meeting scheduling behavior during busy periods defined in work plans

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-12-20 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update workHoursAndLocations",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
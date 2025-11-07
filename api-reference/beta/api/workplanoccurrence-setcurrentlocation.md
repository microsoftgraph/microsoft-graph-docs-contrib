---
title: "workPlanOccurrence: setCurrentLocation"
description: "Updates the work location for the current day or current active segment."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/20/2024
---

# workPlanOccurrence: setCurrentLocation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Updates the work location for the current day or current active segment. This action allows users to quickly update their work location without modifying individual occurrences.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workplanoccurrence_setcurrentlocation" } -->
[!INCLUDE [permissions-table](../includes/permissions/workplanoccurrence-setcurrentlocation-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
} -->

```http
POST /me/settings/workHoursAndLocations/occurrences/setCurrentLocation
POST /users/{id | userPrincipalName}/settings/workHoursAndLocations/occurrences/setCurrentLocation
```

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter | Type | Description |
|:----------|:-----|:------------|
| updateScope | workLocationUpdateScope | The scope of the update. Possible values are: `currentSegment`, `currentDay`, `unknownFutureValue`. |
| workLocationType | workLocationType | The new work location type to set. Possible values are: `office`, `remote`. |
| workLocationDetails | [place](../resources/place.md) | The place entity representing the work location. Can be bound using @odata.bind when workLocationType is office. |

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Set current location to office

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "workplanoccurrence_setcurrentlocation_office"
} -->

```http
POST https://graph.microsoft.com/beta/me/settings/workHoursAndLocations/occurrences/setCurrentLocation
Content-type: application/json

{
  "updateScope": "currentDay",
  "workLocationType": "office",
  "workLocationDetails@odata.bind": "https://graph.microsoft.com/beta/places/12345678-1234-1234-1234-123456789012"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Set current location to remote

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "workplanoccurrence_setcurrentlocation_remote"
} -->

```http
POST https://graph.microsoft.com/beta/me/settings/workHoursAndLocations/occurrences/setCurrentLocation
Content-type: application/json

{
  "updateScope": "currentSegment",
  "workLocationType": "remote"
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
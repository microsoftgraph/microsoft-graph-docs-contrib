---
title: "workPlanOccurrence: setCurrentLocation"
description: "Update your work location for the current day or current active segment."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/19/2025
---

# workPlanOccurrence: setCurrentLocation

Namespace: microsoft.graph

Update your [work](../resources/workplanoccurrence.md) location for the current day or current active segment. This action allows you to quickly update your work location without modifying individual occurrences.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workplanoccurrence_setcurrentlocation" } -->
[!INCLUDE [permissions-table](../includes/permissions/workplanoccurrence-setcurrentlocation-permissions.md)]

## HTTP request

```http
POST /me/settings/workHoursAndLocations/occurrences/setCurrentLocation
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

When using the `/users/{id}` endpoint, the ID must be your own user ID.

```http
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
| placeId | String | Identifier of a place from the Microsoft Graph Places Directory API. Only applicable when **workLocationType** is set to `office`. |
| updateScope | [workLocationUpdateScope](#worklocationupdatescope-values) | The scope of the update. Supports a subset of the values of **workLocationUpdateScope**. The possible values are: `currentSegment`, `currentDay`. |
| workLocationType | [workLocationType](../resources/workplanoccurrence.md#worklocationtype-values) | The new work location type to set. Supports a subset of the values of **workLocationType**. The possible values are: `office`, `remote`. |

### workLocationUpdateScope values

| Member | Description |
|:-------|:------------|
| currentSegment | Update only the current time segment. |
| currentDay | Update the entire current day. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Set the current location to office

The following example shows how to set the current location to office.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "workplanoccurrence_setcurrentlocation_office"
} -->

```http
POST https://graph.microsoft.com/v1.0/me/settings/workHoursAndLocations/occurrences/setCurrentLocation
Content-type: application/json

{
  "updateScope": "currentDay",
  "workLocationType": "office",
  "placeId": "12345678-1234-1234-1234-123456789012"
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

The following example shows how to set the current location to remote.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "workplanoccurrence_setcurrentlocation_remote"
} -->

```http
POST https://graph.microsoft.com/v1.0/me/settings/workHoursAndLocations/occurrences/setCurrentLocation
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

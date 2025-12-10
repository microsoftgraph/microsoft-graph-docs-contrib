---
title: "Get workHoursAndLocationsSetting"
description: "Get the properties and relationships of your own workHoursAndLocationsSetting."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/10/2025
---

# Get workHoursAndLocationsSetting

Namespace: microsoft.graph

Get the properties and relationships of your own [workHoursAndLocationsSetting](../resources/workhoursandlocationssetting.md). The settings include the location sharing preferences and navigation properties to your work plan recurrences. To retrieve work plan occurrences, use the [occurrencesView](workhoursandlocationssetting-occurrencesview.md) API.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workhoursandlocationssetting_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/workhoursandlocationssetting-get-permissions.md)]

## HTTP request

```http
GET /me/settings/workHoursAndLocations
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

When using the `/users/{id}` endpoint, the ID must be your own user ID.

```http
GET /users/{id | userPrincipalName}/settings/workHoursAndLocations
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [workHoursAndLocationsSetting](../resources/workhoursandlocationssetting.md) object in the response body.

## Examples

### Request

The following example shows a request to get basic work hours and location settings.

<!-- {
  "blockType": "request",
  "name": "workhoursandlocationssetting_get"
} -->
```http
GET https://graph.microsoft.com/v1.0/me/settings/workHoursAndLocations
```

### Response

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
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('12345678-1234-1234-1234-123456789012')/settings/workHoursAndLocations/$entity",
  "maxSharedWorkLocationDetails": "approximate"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-12-20 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get workHoursAndLocationsSetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

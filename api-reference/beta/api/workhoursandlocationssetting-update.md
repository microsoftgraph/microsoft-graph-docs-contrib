---
title: "Update workHoursAndLocationsSetting"
description: "Update the properties of your own workHoursAndLocationsSetting."
author: "emilbekj"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 12/10/2025
---

# Update workHoursAndLocationsSetting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of your own [workHoursAndLocationsSetting](../resources/workhoursandlocationssetting.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workhoursandlocationssetting_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/workhoursandlocationssetting-update-permissions.md)]

## HTTP request

```http
PATCH /me/settings/workHoursAndLocations
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

When using the `/users/{id}` endpoint, the ID must be your own user ID.

```http
PATCH /users/{id | userPrincipalName}/settings/workHoursAndLocations
```

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property | Type | Description |
|:---------|:-----|:------------|
| maxSharedWorkLocationDetails | [maxWorkLocationDetails](../resources/workhoursandlocationssetting.md#maxworklocationdetails-values) | Controls the level of work location details that can be shared with colleagues. The allowed values are: `none`, `approximate`, `specific`. |

## Response

If successful, this method returns a `200 OK` response code and an updated [workHoursAndLocationsSetting](../resources/workhoursandlocationssetting.md) object in the response body.

## Examples

### Request

The following example shows a request to update the maximum level of work location details that can be shared.

<!-- {
  "blockType": "request",
  "name": "workhoursandlocationssetting_update"
} -->
```http
PATCH https://graph.microsoft.com/beta/me/settings/workHoursAndLocations
Content-Type: application/json

{
  "maxSharedWorkLocationDetails": "approximate"
}
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('12345678-1234-1234-1234-123456789012')/settings/workHoursAndLocations/$entity",
  "maxSharedWorkLocationDetails": "approximate"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-12-20 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update workHoursAndLocationsSetting",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

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

Update the properties of a user's [workHoursAndLocationsSetting](../resources/workhoursandlocationssetting.md) settings.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workhoursandlocations_update" } -->
| Permission type | Least privileged permissions | Higher privileged permissions |
|:----------------|:-----------------------------|:------------------------------|
| Delegated (work or school account) | Calendars.ReadWrite | Not applicable. |
| Delegated (personal Microsoft account) | Not supported. | Not supported. |
| Application | Not supported. | Not supported. |

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

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or are recalculated based on changes to other property values. For best performance, don't include existing values that didn't change.

| Property | Type | Description |
|:---------|:-----|:------------|
| maxSharedWorkLocationDetails | maxWorkLocationDetails | Controls the level of work location details that can be shared with colleagues. The possible values are: `unknown`, `none`, `approximate`, `specific`, `unknownFutureValue`. |

## Response

If successful, this method returns a `200 OK` response code and an updated [workHoursAndLocations](../resources/workhoursandlocationssetting.md) object in the response body.

## Examples

### Example 1: Update shared location details mode

#### Request

The following example shows a request to update the maximum level of work location details that can be shared.

```http
PATCH https://graph.microsoft.com/beta/me/settings/workHoursAndLocations
Content-Type: application/json

{
  "maxSharedWorkLocationDetails": "approximate"
}
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

## Error responses

If the request fails, the API returns standard HTTP error codes. Common error scenarios include:

- **400 Bad Request**: Invalid property values or malformed request body
- **403 Forbidden**: User doesn't have permission to update work hours and locations
- **422 Unprocessable Entity**: Invalid enum value for maxSharedWorkLocationDetails

## Remarks

- Only the maxSharedWorkLocationDetails property can be updated on the workHoursAndLocationsSetting entity
- Changes to this setting control the level of work location information that can be shared with colleagues

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
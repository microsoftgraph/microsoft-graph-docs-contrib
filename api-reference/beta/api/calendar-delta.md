---
title: "calendar: delta"
description: "Get a set of Calendars that were added, deleted, or updated in a user's mailbox"
ms.localizationpriority: medium
author: "vikailas"
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/22/2024
---

# calendar: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "calendar-delta-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/calendar-delta-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/calendars/delta
GET /users/{usersId}/calendars/delta
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [calendar](../resources/calendar.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "calendarthis.delta"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/calendars/delta
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.calendar)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.calendar",
      "id": "String (identifier)",
      "name": "String",
      "color": "String",
      "hexColor": "String",
      "isDefaultCalendar": "Boolean",
      "changeKey": "String",
      "canShare": "Boolean",
      "canViewPrivateItems": "Boolean",
      "isShared": "Boolean",
      "isSharedWithMe": "Boolean",
      "canEdit": "Boolean",
      "owner": {
        "@odata.type": "microsoft.graph.emailAddress"
      },
      "calendarGroupId": "String",
      "allowedOnlineMeetingProviders": [
        "String"
      ],
      "defaultOnlineMeetingProvider": "String",
      "isTallyingResponses": "Boolean",
      "isRemovable": "Boolean"
    }
  ]
}
```
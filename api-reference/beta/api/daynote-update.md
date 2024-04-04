---
title: "Update dayNote"
description: "Update the properties of a day note."
author: fmcgurrenw
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
ms.topic: reference
---

# Update dayNote
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [day note](../resources/daynote.md).

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "daynote_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/daynote-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /teams/{teamsId}/schedule/dayNotes/{dayNoteId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|dayNoteDate|Date|The date for the day note.|
|sharedDayNote|[itemBody](../resources/itembody.md)|The draft version of this **dayNote** that is viewable by managers.|
|draftDayNote|[itemBody](../resources/itembody.md)|The shared version of this **dayNote** that is viewable by both employees and managers.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_daynote"
}
-->
``` http
PUT https://graph.microsoft.com/beta/teams/{teamsId}/schedule/dayNotes/{dayNoteId}
Content-Type: application/json

{
    "dayNoteDate": "2023-10-08",
    "sharedDayNote": {
        "contentType": "text",
        "content": "updated note 08"
    }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-daynote-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json
```


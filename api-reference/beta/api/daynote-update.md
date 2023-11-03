---
title: "Update dayNote"
description: "Update the properties of a dayNote object."
author: fmcgurrenw
ms.localizationpriority: medium
ms.prod: microsoft-teams
doc_type: apiPageType
---

# Update dayNote
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [dayNote](../resources/daynote.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "daynote-update-permissions"
}
-->
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
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|dayNoteDate|Date|The date the dayNote is relevent to.|
|sharedDayNote|[itemBody](../resources/itembody.md)|The draft version of this dayNote that is viewable by managers.|
|draftDayNote|[itemBody](../resources/itembody.md)|The shared version of this dayNote that is viewable by both employees and managers.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
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


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json
```


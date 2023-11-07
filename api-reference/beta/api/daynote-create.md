---
title: "Create dayNote"
description: "Create a dayNote object in the schedule."
author: fmcgurrenw
ms.localizationpriority: medium
ms.prod: microsoft-teams
doc_type: apiPageType
---

# Create dayNote
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [dayNote](../resources/daynote.md) object in the schedule.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "daynote-create-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/daynote-create-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/schedule/dayNotes
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

If successful, this method returns a `200 OK` response code and a [dayNote](../resources/daynote.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_daynote"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamsId}/schedule/dayNotes
Content-Type: application/json

{
    "dayNoteDate": "2023-10-08",
    "sharedDayNote": {
        "contentType": "text",
        "content": "shared note 08"
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
The following is an example of the response

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.etag": "\"0404d9d2-0000-0700-0000-65412d480000\"",
    "id": "NOTE_f87ade4c-1107-47b6-b977-0f31c065b209",
    "dayNoteDate": "2023-10-08",
    "sharedDayNote": {
        "contentType": "text",
        "content": "shared note 08"
    },
    "draftDayNote": null
}
```


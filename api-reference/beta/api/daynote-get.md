---
title: "Get dayNote"
description: "Read the properties and relationships of a dayNote object."
author: fmcgurrenw
ms.localizationpriority: medium
ms.prod: microsoft-teams
doc_type: apiPageType
---

# Get dayNote
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [dayNote](../resources/daynote.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/daynote-get-permissions.md)]

## HTTP request

``` http
GET /teams/{teamsId}/schedule/dayNotes/{dayNoteId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [dayNote](../resources/daynote.md) object in the response body.

## Examples

### Request
The following is an example of a request.

``` http
GET https://graph.microsoft.com/beta/teams/{teamsId}/schedule/dayNotes/{dayNoteId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
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
    "draftDayNote": {
        "contentType": "text",
        "content": "draft note 08"
    }
}
```


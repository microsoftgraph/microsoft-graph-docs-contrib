---
title: "List dayNote"
description: "Retrieve the properties and relationships of all dayNote objects in a team."
author: fmcgurrenw
ms.localizationpriority: medium
ms.prod: microsoft-teams
doc_type: apiPageType
---

# List dayNote
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of all [dayNote](../resources/daynote.md) objects in a team.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/daynote-list-permissions.md)]

## HTTP request
``` http
GET /teams/{teamsId}/schedule/dayNotes
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

``` http
GET /teams/{teamsId}/schedule/dayNotes?$filter=dayNoteDate eq 2023-11-3
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [dayNote](../resources/daynote.md) objects in the response body.

## Examples

### Request
The following is an example of a request.

``` http
GET https://graph.microsoft.com/beta/teams/{teamsId}/schedule/dayNotes
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [ 
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
     },
      {
        "@odata.etag": "\"0404d9d2-0000-0700-0000-65412d480009\"",
        "id": "NOTE_g87ade4c-1107-47b6-b977-0f31c065b209",
        "dayNoteDate": "2023-10-09",
        "sharedDayNote": {
            "contentType": "text",
            "content": "shared note 09"
        },
        "draftDayNote": null
     }
  ]
}
```


---
title: "Get dayNote"
description: "Read the properties and relationships of a day note."
author: fmcgurrenw
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
ms.topic: reference
---

# Get dayNote
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [day note](../resources/daynote.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/daynote-get-permissions.md)]

## HTTP request

``` http
GET /teams/{teamsId}/schedule/dayNotes/{dayNoteId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [dayNote](../resources/daynote.md) object in the response body.

## Examples

### Request
The following example shows a request.

``` http
GET https://graph.microsoft.com/beta/teams/{teamsId}/schedule/dayNotes/{dayNoteId}
```


### Response
The following example shows the response.
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


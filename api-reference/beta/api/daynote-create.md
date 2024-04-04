---
title: "Create dayNote"
description: "Create a day note in the schedule."
author: fmcgurrenw
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
ms.topic: reference
---

# Create dayNote
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [day note](../resources/daynote.md) in the schedule.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "daynote_create" } -->
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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|dayNoteDate|Date|The date of the day note.|
|sharedDayNote|[itemBody](../resources/itembody.md)|The draft version of this **dayNote** that is viewable by managers.|
|draftDayNote|[itemBody](../resources/itembody.md)|The shared version of this **dayNote** that is viewable by both employees and managers.|


## Response

If successful, this method returns a `200 OK` response code and a [dayNote](../resources/daynote.md) object in the response body.

## Examples

### Request
The following example shows a request.

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
    "draftDayNote": null
}
```


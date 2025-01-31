---
title: "Update dayNote"
description: "Update the properties of a dayNote object."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# Update dayNote

Namespace: microsoft.graph

Update the properties of a [dayNote](../resources/daynote.md) object.

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

``` http
PUT /teams/d72f9b8e-4c76-4f50-bf93-51b17aab0cd9/schedule/dayNotes/NOTE_ff2194ab-0ae5-43e3-acb4-ec2654927213
Content-Type: application/json

{
  "dayNoteDate": "2025-01-09",
  "sharedDayNote": null,
  "draftDayNote": {
    "contentType": "text",
    "content": "Produce shipment arriving at 2 PM"
  }
}
```


### Response

The following example shows the response.

``` http
HTTP/1.1 204 No Content
```


---
title: "Get dayNote"
description: "Read the properties and relationships of a dayNote object."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# Get dayNote

Namespace: microsoft.graph

Read the properties and relationships of a [dayNote](../resources/daynote.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "daynote_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/daynote-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
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
GET /teams/d72f9b8e-4c76-4f50-bf93-51b17aab0cd9/schedule/dayNotes/NOTE_52191d41-ce2d-4295-a477-b75941bd8e0f
```


### Response
The following example shows the response.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "NOTE_52191d41-ce2d-4295-a477-b75941bd8e0f",
  "dayNoteDate": "2025-01-08",
  "draftDayNote": null,
  "sharedDayNote": {
    "contentType": "text",
    "content": "Expect a lot of customers today with the holiday traffic."
  }
}
```


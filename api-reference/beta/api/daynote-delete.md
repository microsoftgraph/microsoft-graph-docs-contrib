---
title: "Delete dayNote"
description: "Delete a day note."
author: fmcgurrenw
ms.localizationpriority: medium
ms.prod: microsoft-teams
doc_type: apiPageType
---

# Delete dayNote
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [day note](../resources/daynote.md) object.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/daynote-delete-permissions.md)]

## HTTP request

``` http
DELETE /teams/{teamsId}/schedule/dayNotes/{dayNoteId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.

``` http
DELETE https://graph.microsoft.com/beta/teams/{teamsId}/schedule/dayNotes/{dayNoteId}
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

``` http
HTTP/1.1 204 No Content
Content-Type: application/json
```


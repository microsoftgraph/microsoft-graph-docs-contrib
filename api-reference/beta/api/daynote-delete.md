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


[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/daynote-delete-permissions.md)]

## HTTP request

``` http
DELETE /teams/{teamsId}/schedule/dayNotes/{dayNoteId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

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

``` http
HTTP/1.1 204 No Content
Content-Type: application/json
```


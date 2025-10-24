---
title: "Delete dayNote"
description: "Delete a dayNote object."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: apiPageType
---

# Delete dayNote

Namespace: microsoft.graph

Delete a [dayNote](../resources/daynote.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "schedule_delete_daynotes" } -->
[!INCLUDE [permissions-table](../includes/permissions/schedule-delete-daynotes-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
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

```http
DELETE /teams/d72f9b8e-4c76-4f50-bf93-51b17aab0cd9/schedule/dayNotes/NOTE_ff2194ab-0ae5-43e3-acb4-ec2654927213
```

### Response

```http
HTTP/1.1 204 No Content
```


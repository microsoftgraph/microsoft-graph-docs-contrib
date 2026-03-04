---
title: "driveItem: removeRetentionLabel"
description: "Remove a retention label from a driveItem."
author: "kyracatwork"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 02/03/2026
---

# driveItem: removeRetentionLabel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove the retention label from a [driveItem](../resources/driveitem.md). This operation clears the retention label and all associated retention settings enforced on the item.

For information about retention labels from an administrator's perspective, see [Use retention labels to manage the lifecycle of documents stored in SharePoint](/microsoft-365/compliance/auto-apply-retention-labels-scenario).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_removeretentionlabel" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-removeretentionlabel-permissions.md)]

> [!NOTE]
> `Sites.FullControl.All` is the least privileged permission required to remove retention labels that classify the content as records.

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

> [!NOTE]
> Removing a retention label is not supported when using app‑only authentication for SPE containers.
This operation requires a delegated user context and will fail if called with app‑only permissions.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /drives/{drive-id}/items/{item-id}/retentionLabel
DELETE /groups/{group-id}/drive/items/{item-id}/retentionLabel
DELETE /me/drive/items/{item-id}/retentionLabel
DELETE /users/{user-id}/drive/items/{item-id}/retentionLabel
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Error responses

| Error code       | HTTP status | Description                                                        |
|:-----------------|:------------|:-------------------------------------------------------------------|
| itemNotFound     | 404         | The item could not be found or is no longer accessible             |
| accessDenied     | 403         | The caller does not have permission to remove the retention label  |
| notSupported     | 400         | App-only callers are not supported for SPE containers              |

## Examples

### Example 1: Remove retention label from a driveItem

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "driveItem_removeRetentionLabel",
  "sampleKeys": ["b!t18F8ybsHUq1z3LTz8xvZqP8zaSWjkFNhsME-Fepo75dTf9vQKfeRblBZjoSQrd7", "01NKDM7HMOJTVYMDOSXFDK2QJDXCDI3WUK"]
}
-->

```http
DELETE https://graph.microsoft.com/beta/drives/b!t18F8ybsHUq1z3LTz8xvZqP8zaSWjkFNhsME-Fepo75dTf9vQKfeRblBZjoSQrd7/items/01NKDM7HMOJTVYMDOSXFDK2QJDXCDI3WUK/retentionLabel
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Remove retention label from a driveItem failed (Insufficient permissions)

#### Request

<!-- {
  "blockType": "request",
  "name": "driveItem_removeRetentionLabel_spe_permissions_error"
}
-->

```http
DELETE https://graph.microsoft.com/beta/drives/b!t18F8ybsHUq1z3LTz8xvZqP8zaSWjkFNhsME-Fepo75dTf9vQKfeRblBZjoSQrd7/items/01NKDM7HMOJTVYMDOSXFDK2QJDXCDI3WUK/retentionLabel
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.error"
} -->

```http
HTTP/1.1 403 Forbidden
Content-Type: application/json

{
  "error": {
    "code": "accessDenied",
    "message": "Access Denied: Do not have enough permission.",
    "innerError": {
      "request-id": "12345678-1234-1234-1234-123456789012",
      "date": "2025-02-03T10:30:00"
    }
  }
}
```

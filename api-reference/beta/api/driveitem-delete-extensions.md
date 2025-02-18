---
title: "Delete extension"
description: "Delete an extension object."
author: "tmarwendo-microsoft"
ms.date: 02/18/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Delete extension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an extension object from the specified instance of a resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "ignored",
  "name": "driveitem-delete-extensions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-delete-extensions-permissions.md)]

|Permission type                       | Permissions (from least to most privileged)                      |
|:-------------------------------------|:-----------------------------------------------------------------|
|Delegated (work or school account)    | Files.ReadWrite, Files.ReadWrite.All                             |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All                            |
|Application                           | Not Supported.                                                   |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /drive/items/{itemId}/extensions/{extensionId}
```

## Request headers

| Name       | Value |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |

## Response

The response code can be `204 No Content`.

## Example

### Request 

This example deletes an openExtension on a driveItem by Id.

<!-- {
"blockType": "ignored",
}-->
```http
DELETE /drive/items/{itemId}/extensions/{extensionId}
```

### Response 

<!-- {
"blockType": "ignored",
}-->
```http
HTTP/1.1 204 No Content
```
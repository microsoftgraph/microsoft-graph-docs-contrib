---
title: "Get extension"
description: "Get an extension object."
author: "tmarwendo-microsoft"
ms.date: 02/18/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---
# Get extension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an extension object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "ignored",
  "name": "extension-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/extension-get-permissions.md)]


|Permission type                       | Permissions (from least to most privileged)                      |
|:-------------------------------------|:-----------------------------------------------------------------|
|Delegated (work or school account)    | Files.Read, Files.Read.All, Files.ReadWrite, Files.ReadWrite.All |
|Delegated (personal Microsoft account) | Files.Read, Files.Read.All, Files.ReadWrite, Files.ReadWrite.All|
|Application | Not Supported.                                                                             |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /drive/items/{itemId}/extensions/{extensionId}
GET /drive/items/{itemID}?$expand=extensions($filter=id eq 'extensionId')
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name       | Value |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type | application/json |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [extension](../resources/extension.md) object in the response body.

## Examples

### Request 1

<!-- {
"blockType": "ignored",
}-->
```http
GET /drive/items/{itemID}/extensions/{extensionId}
```

### Response 1

<!-- {
"blockType": "ignored",
}-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "extensionId",
    "extensionName": "extensionName",
    "myCustomString": "Contoso data",
    "myCustomBool": false
}
```

### Request 2

<!-- {
"blockType": "ignored",
}-->
```http
GET /drive/items/{itemID}?$expand=extensions($filter=id eq 'myCustomExtension')
```

### Response 2

<!-- {
"blockType": "ignored",
}-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "name": "New Folder",
    "folder": {},
    "@microsoft.graph.conflictBehavior": "rename",
    "extensions": [
        {
            "id": "myCustomExtension",
            "extensionName": "myCustomExtension",
            "myCustomString": "Contoso data",
            "myCustomBool": false
        }
    ]
}
```
---
title: "Update extension"
description: "Update an extension object."
author: "tmarwendo-microsoft"
ms.date: 02/18/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---


# Update extension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an extension object. The data in an extension can be primitive types only.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "ignored",
  "name": "extension-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/extension-update-permissions.md)]


|Permission type                       | Permissions (from least to most privileged)                      |
|:-------------------------------------|:-----------------------------------------------------------------|
|Delegated (work or school account)    | Files.ReadWrite, Files.ReadWrite.All                             |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All                            |
|Application                           | Not Supported.                                                   |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH drive/items/{itemId}/extensions/{extensionId}
```

## Request headers

| Name       | Value |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type | application/json |

## Request body

Provide a JSON body of an [extension](../resources/openExtension.md), with the following required
name-value pairs, and any additional custom data. The data in the JSON payload can be primitive types only.

| Name       | Value |
|:---------------|:----------|
| @odata.type | microsoft.graph.openTypeExtension |
| extensionName | %unique_string% |

## Response

If successful, this method returns a `200 OK` response code and the updated
[extension](../resources/extension.md) object.

## Examples

### Request

The example updates an open extension on a driveItem.

<!-- {
"blockType": "ignored",
}-->
```http
PATCH /drive/items/{itemId}/extensions/{extensionId}

{
    "extensionName": "newExtensionName",
    "myCustomString": "Contoso data",
    "myCustomBool": false
}
```

### Response

<!-- {
"blockType": "ignored",
}-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "extensionId",
    "extensionName": "newExtensionName",
    "myCustomString": "Contoso data",
    "myCustomBool": false
}
```
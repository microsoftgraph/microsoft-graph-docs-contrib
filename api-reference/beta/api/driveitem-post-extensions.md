---
title: "Create extension"
description: "Create a new extension object."
author: "tmarwendo-microsoft"
ms.date: 02/18/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Create extension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an open [extension](../resources/extension.md) object and add custom properties in a new or existing instance of a resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "ignored",
  "name": "driveitem-post-extensions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-post-extensions-permissions.md)]

|Permission type                       | Permissions (from least to most privileged)                      |
|:-------------------------------------|:-----------------------------------------------------------------|
|Delegated (work or school account)    | Files.ReadWrite, Files.ReadWrite.All                             |
|Delegated (personal Microsoft account) | Files.ReadWrite, Files.ReadWrite.All                            |
|Application                           | Not Supported.                                                   |

## HTTP request

### Create an extension in a new resource instance

Use the same REST request that you use to create the instance.

<!-- { "blockType": "ignored" } -->
```http
POST /drive/items/{itemId}/children
```

When creating an extension in a _new_ resource instance, in addition to the
new **extension** object, provide a JSON representation of the relevant properties to create such a resource instance.

### Create an extension in an existing resource instance

Identify the resource instance in the request and do a `POST` to the **extensions** navigation property.

<!-- { "blockType": "ignored" } -->
```http
POST /drive/items/{itemId}/extensions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [extension](../resources/extension.md) object.

You can specify the following properties when creating an **extension**.

|Property|Type|Description|
|:---|:---|:---|
| extensionName | %unique_string% | Name of the extension. Must be unique.


## Response

### Response code
If successful, this method returns a `201 Created` response code and an [extension](../resources/extension.md) object in the response body.

### Response body

| Scenario       | Response body |
|:---------------|:--------------|
| Creating an extension on a driveItem | [extension](../resources/extension.md) |
| Creating an extension while implicitly creating a driveItem resource instance | [driveItem](../resources/driveItem.md) |

## Examples

### Request 1

The first example creates an extension on a driveItem

<!-- {
"blockType": "ignored",
}-->
```http
POST /drive/items/{itemId}/extensions

{
    "extensionName": "myCustomExtension",
    "myCustomString": "Contoso data",
    "myCustomBool": false
}
```

### Response 1

Here is the response for the first example. The response body includes properties of the new message,
and the following for the new extension:

- The **id** property with the fully qualified name.
- The default property **extensionName** specified in the request.
- The custom data specified in the request stored as 2 custom properties.

Note: The response object shown here might be shortened for readability.

<!-- {
"blockType": "ignored",
}-->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "myCustomExtension",
    "extensionName": "myCustomExtension",
    "myCustomString": "Contoso data",
    "myCustomBool": false
}
```

### Request 2

The second example creates an item and an open extension on the item.

<!-- {
"blockType": "ignored",
}-->
```http
POST /drive/items/{itemId}/children

{
    "name": "New Item",
    "@microsoft.graph.conflictBehavior": "rename",
    "extensions": [
        {
            "extensionName": "myCustomExtension",
            "myCustomString": "Contoso data",
            "myCustomBool": false
        }
    ]
}
```

### Response 2

Here is the response for the second example. The response body includes properties of the new item,
and the following for the new extension:

- The **id** property with the fully qualified name.
- The default property **extensionName** specified in the request.
- The custom data specified in the request stored as 2 custom properties.

Note: The response object shown here might be shortened for readability.

<!-- {
"blockType": "ignored",
}-->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "ACEA49D1-1444-45A9-A1CB-68B1B28AE491",
    "createdDateTime": "2022-08-30T22:55:29Z",
    "name": "New Folder",
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
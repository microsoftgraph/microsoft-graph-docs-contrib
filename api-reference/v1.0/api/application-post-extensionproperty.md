---
title: "Create extensionProperty (directory extension)"
description: "Create a new directory extension."
ms.localizationpriority: medium
author: "sureshja"
ms.prod: "extensions"
doc_type: "apiPageType"
---

# Create extensionProperty (directory extension)

Namespace: microsoft.graph

Create a new directory extension definition, represented by an [extensionProperty](../resources/extensionproperty.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.ReadWrite.All    |
|Delegated (personal Microsoft account) | Application.ReadWrite.All |
|Application | Application.ReadWrite.OwnedBy, Application.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /applications/{application ObjectId}/extensionProperties
```

## Request headers
| Name       | Description|
|:-----------|:----------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type | application/json. Required. |

## Request body

In the request body, provide an [extensionProperty](../resources/extensionproperty.md) object with the following properties.


| Property     | Type        | Description |
|:-------------|:------------|:------------|
|dataType|String| Specifies the data type of the value the extension property can hold. Following values are supported. Not nullable. <ul><li>`Binary` - 256 bytes maximum</li><li>`Boolean`</li><li>`DateTime` - Must be specified in ISO 8601 format. Will be stored in UTC.</li><li>`Integer` - 32-bit value.</li><li>`LargeInteger` - 64-bit value.</li><li>`String` - 256 characters maximum</li></ul>|
|name|String| Name of the extension property. Not nullable. |
|targetObjects|String collection| The Microsoft Graph resources that can use the extension property. All values must be in PascalCase. The following values are supported. Not nullable. <ul><li>`User`</li><li>`Group`</li><li>`AdministrativeUnit`</li><li>`Application`</li><li>`Device`</li><li>`Organization`</li></ul>|


## Response

If successful, this method returns a `201 Created` response code and a new [extensionProperty](../resources/extensionproperty.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_extensionproperty_from_application"
}-->

```http
POST https://graph.microsoft.com/v1.0/applications/fd918e4b-c821-4efb-b50a-5eddd23afc6f/extensionProperties
Content-type: application/json

{
    "name": "jobGroup",
    "dataType": "String",
    "targetObjects": [
        "User"
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-extensionproperty-from-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-extensionproperty-from-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-extensionproperty-from-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-extensionproperty-from-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-extensionproperty-from-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-extensionproperty-from-application-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

If successful, this method returns `201 Created` response code and [extensionProperty](../resources/extensionProperty.md) object in the response body.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.extensionProperty"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applications('fd918e4b-c821-4efb-b50a-5eddd23afc6f')/extensionProperties/$entity",
    "id": "da38c7b1-133e-4a79-abcd-e2fd586ce621",
    "deletedDateTime": null,
    "appDisplayName": "b2c-extensions-app. Do not modify. Used by AADB2C for storing user data.",
    "dataType": "String",
    "isSyncedFromOnPremises": false,
    "name": "extension_25883231668a43a780b25685c3f874bc_jobGroup",
    "targetObjects": [
        "User"
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create extensionProperty",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


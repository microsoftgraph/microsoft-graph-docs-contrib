---
title: "Create allowedValue"
description: "Create a new allowedValue object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Create allowedValue
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [allowedValue](../resources/allowedvalue.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.ReadWrite.All|

The signed-in user must also be assigned the Attribute Definition Administrator [directory role](/azure/active-directory/roles/permissions-reference). By default, Global Administrator and other administrator roles do not have permissions to read, define, or assign custom security attributes.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/customSecurityAttributeDefinitions/{customSecurityAttributeDefinitionId}/allowedValues
```


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [allowedValue](../resources/allowedvalue.md) object.

The following table shows the properties that are required when you create the [allowedValue](../resources/allowedvalue.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier for the predefined value. Can be up to 64 characters long and include Unicode characters. Can include spaces, but some special characters are not allowed. Cannot be changed later. Case sensitive. Required.|
|isActive|Boolean|Indicates whether the predefined value is active or deactivated. If set to `false`, this predefined value cannot be assigned to any additional supported directory objects. Required.|



## Response

If successful, this method returns a `201 Created` response code and an [allowedValue](../resources/allowedvalue.md) object in the response body.

## Examples

### Example: Add a predefined value

The following example adds a predefined value to a custom security attribute definition.

+ Attribute set: `Engineering`
+ Attribute: `Project`
+ Predefined value: `Alpine`

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_allowedvalue",
  "sampleKeys": ["Engineering_Project"]
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions/Engineering_Project/allowedValues
Content-Type: application/json

{
    "id":"Alpine",
    "isActive":"true"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-allowedvalue-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-allowedvalue-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-allowedvalue-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-allowedvalue-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-allowedvalue-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-allowedvalue-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.allowedValue"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/customSecurityAttributeDefinitions('Engineering_Project')/allowedValues/$entity",
    "id": "Alpine",
    "isActive": true
}
```

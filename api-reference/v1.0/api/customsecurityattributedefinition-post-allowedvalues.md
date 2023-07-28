---
title: "Create allowedValue"
description: "Create a new allowedValue object."
author: "CecilyK"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Create allowedValue

Namespace: microsoft.graph

Create a new [allowedValue](../resources/allowedvalue.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.ReadWrite.All|

[!INCLUDE [rbac-customsecurityattibutes-apis-write](../includes/rbac-for-apis/rbac-customsecurityattibutes-apis-write.md)]

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

The following table shows the properties that are required when you create an [allowedValue](../resources/allowedvalue.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier for the predefined value. Can be up to 64 characters long and include Unicode characters. Can include spaces, but some special characters are not allowed. Cannot be changed later. Case sensitive. Required.|
|isActive|Boolean|Indicates whether the predefined value is active or deactivated. If set to `false`, this predefined value cannot be assigned to any additional supported directory objects. Required.|

## Response

If successful, this method returns a `201 Created` response code and an [allowedValue](../resources/allowedvalue.md) object in the response body.

## Examples

### Request

The following example adds a predefined value to a custom security attribute definition.

+ Attribute set: `Engineering`
+ Attribute: `Project`
+ Predefined value: `Alpine`

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_allowedvalue",
  "sampleKeys": ["Engineering_Project"]
}
-->
``` http
POST https://graph.microsoft.com/v1.0/directory/customSecurityAttributeDefinitions/Engineering_Project/allowedValues
Content-Type: application/json

{
    "id":"Alpine",
    "isActive":"true"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-allowedvalue-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-allowedvalue-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-allowedvalue-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directory/customSecurityAttributeDefinitions('Engineering_Project')/allowedValues/$entity",
    "id": "Alpine",
    "isActive": true
}
```

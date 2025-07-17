---
title: "Create allowedValue"
description: "Create a new allowedValue object."
author: "CecilyK"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Create allowedValue

Namespace: microsoft.graph

Create a new [allowedValue](../resources/allowedvalue.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "customsecurityattributedefinition_post_allowedvalues" } -->
[!INCLUDE [permissions-table](../includes/permissions/customsecurityattributedefinition-post-allowedvalues-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [allowedValue](../resources/allowedvalue.md) object.

The following table shows the properties that are required when you create an [allowedValue](../resources/allowedvalue.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier for the predefined value. Can be up to 64 characters long and include Unicode characters. Can include spaces, but some special characters aren't allowed. Can't be changed later. Case sensitive. Required.|
|isActive|Boolean|Indicates whether the predefined value is active or deactivated. If set to `false`, this predefined value can't be assigned to any additional supported directory objects. Required.|

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

The following example shows the response.

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

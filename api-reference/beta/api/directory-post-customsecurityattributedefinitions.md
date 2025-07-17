---
title: "Create customSecurityAttributeDefinition"
description: "Create a new customSecurityAttributeDefinition object."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 05/14/2024
---

# Create customSecurityAttributeDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "directory_post_customsecurityattributedefinitions" } -->
[!INCLUDE [permissions-table](../includes/permissions/directory-post-customsecurityattributedefinitions-permissions.md)]

[!INCLUDE [rbac-customsecurityattibutes-apis-write](../includes/rbac-for-apis/rbac-customsecurityattibutes-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/customSecurityAttributeDefinitions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.

The following table shows the properties that you can configure when you create a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md).

|Property|Type|Description|
|:---|:---|:---|
|attributeSet|String|Name of the attribute set. Case sensitive. Required.|
|description|String|Description of the custom security attribute. Can be up to 128 characters long and include Unicode characters. Can't contain spaces or special characters. Can be changed later. Optional.|
|isCollection|Boolean|Indicates whether multiple values can be assigned to the custom security attribute. Can't be changed later. If **type** is set to `Boolean`, **isCollection** can't be set to `true`. Required.|
|isSearchable|Boolean|Indicates whether custom security attribute values are indexed for searching on objects that are assigned attribute values. Can't be changed later. Required.|
|name|String|Name of the custom security attribute. Must be unique within an attribute set. Can be up to 32 characters long and include Unicode characters. Can't contain spaces or special characters. Can't be changed later. Case sensitive. Required.|
|status|String|Specifies whether the custom security attribute is active or deactivated. Acceptable values are `Available` and `Deprecated`. Can be changed later. Required.|
|type|String|Data type for the custom security attribute values. Supported types are: `Boolean`, `Integer`, and `String`. Can't be changed later. Required.|
|usePreDefinedValuesOnly|Boolean|Indicates whether only predefined values can be assigned to the custom security attribute. If set to `false`, free-form values are allowed. Can later be changed from `true` to `false`, but can't be changed from `false` to `true`. If **type** is set to `Boolean`, **usePreDefinedValuesOnly** can't be set to `true`. Required.|

The **id** property is auto generated and can't be set.

## Response

If successful, this method returns a `201 Created` response code and a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object in the response body.

## Examples

### Example 1: Add a custom security attribute

The following example adds a new custom security attribute definition that is a single free-form value of type String.

+ Attribute set: `Engineering`
+ Attribute: `ProjectDate`

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_customsecurityattributedefinition"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions
Content-Type: application/json

{
    "attributeSet":"Engineering",
    "description":"Target completion date",
    "isCollection":false,
    "isSearchable":true,
    "name":"ProjectDate",
    "status":"Available",
    "type":"String",
    "usePreDefinedValuesOnly": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-customsecurityattributedefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-customsecurityattributedefinition-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-customsecurityattributedefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-customsecurityattributedefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-customsecurityattributedefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-customsecurityattributedefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-customsecurityattributedefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-customsecurityattributedefinition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customSecurityAttributeDefinition"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/customSecurityAttributeDefinitions/$entity",
    "attributeSet": "Engineering",
    "description": "Target completion date",
    "id": "Engineering_ProjectDate",
    "isCollection": false,
    "isSearchable": true,
    "name": "ProjectDate",
    "status": "Available",
    "type": "String",
    "usePreDefinedValuesOnly": false
}
```

### Example 2: Add a custom security attribute that supports multiple predefined values

The following example adds a new custom security attribute definition that supports multiple values of type String that are predefined.

+ Attribute set: `Engineering`
+ Attribute: `Project`

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_customsecurityattributedefinition_v2"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions
Content-Type: application/json
Content-length: 310

{
    "attributeSet":"Engineering",
    "description":"Active projects for user",
    "isCollection":true,
    "isSearchable":true,
    "name":"Project",
    "status":"Available",
    "type":"String",
    "usePreDefinedValuesOnly": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-customsecurityattributedefinition-v2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-customsecurityattributedefinition-v2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-customsecurityattributedefinition-v2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-customsecurityattributedefinition-v2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-customsecurityattributedefinition-v2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-customsecurityattributedefinition-v2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-customsecurityattributedefinition-v2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-customsecurityattributedefinition-v2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customSecurityAttributeDefinition"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/customSecurityAttributeDefinitions/$entity",
    "attributeSet": "Engineering",
    "description": "Active projects for user",
    "id": "Engineering_Project",
    "isCollection": true,
    "isSearchable": true,
    "name": "Project",
    "status": "Available",
    "type": "String",
    "usePreDefinedValuesOnly": true
}
```

### Example 3: Add a custom security attribute with a list of predefined values

Here's an example that adds a new custom security attribute definition with a list of predefined values as a collection of strings.

+ Attribute set: `Engineering`
+ Attribute: `Project`
+ Attribute data type: Collection of Strings
+ Predefined values: `Alpine`, `Baker`, `Cascade`

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_customsecurityattributedefinition_allowedvalues"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions
Content-Type: application/json

{
    "attributeSet": "Engineering",
    "description": "Active projects for user",
    "isCollection": true,
    "isSearchable": true,
    "name": "Project",
    "status": "Available",
    "type": "String",
    "usePreDefinedValuesOnly": true,
    "allowedValues": [
        {
            "id": "Alpine",
            "isActive": true
        },
        {
            "id": "Baker",
            "isActive": true
        },
        {
            "id": "Cascade",
            "isActive": true
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-customsecurityattributedefinition-allowedvalues-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-customsecurityattributedefinition-allowedvalues-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-customsecurityattributedefinition-allowedvalues-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-customsecurityattributedefinition-allowedvalues-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-customsecurityattributedefinition-allowedvalues-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-customsecurityattributedefinition-allowedvalues-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-customsecurityattributedefinition-allowedvalues-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-customsecurityattributedefinition-allowedvalues-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customSecurityAttributeDefinition"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/customSecurityAttributeDefinitions/$entity",
    "attributeSet": "Engineering",
    "description": "Active projects for user",
    "id": "Engineering_Project",
    "isCollection": true,
    "isSearchable": true,
    "name": "Project",
    "status": "Available",
    "type": "String",
    "usePreDefinedValuesOnly": true
}
```

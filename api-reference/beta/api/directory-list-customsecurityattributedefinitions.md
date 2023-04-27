---
title: "List customSecurityAttributeDefinitions"
description: "Get a list of the customSecurityAttributeDefinition objects and their properties."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List customSecurityAttributeDefinitions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.Read.All, CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.Read.All, CustomSecAttributeDefinition.ReadWrite.All|

The signed-in user must also be assigned one of the following [directory roles](/azure/active-directory/roles/permissions-reference):

+ Attribute Definition Reader
+ Attribute Assignment Administrator
+ Attribute Definition Administrator

By default, Global Administrator and other administrator roles do not have permissions to read, define, or assign custom security attributes.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/customSecurityAttributeDefinitions
```

## Optional query parameters
This method supports the `$select`, `$top`, `$expand`, and `$filter` (`eq`) OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The `allowedValues` navigation property is not returned or expanded by default and must be specified in an `$expand` query. For example, `/directory/customSecurityAttributeDefinitions?$expand=allowedValues`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) objects in the response body.

## Examples

### Example 1: Get all custom security attributes

The following example gets all custom security attribute definitions in a tenant.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_customsecurityattributedefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-customsecurityattributedefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-customsecurityattributedefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-customsecurityattributedefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-customsecurityattributedefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-customsecurityattributedefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-customsecurityattributedefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customSecurityAttributeDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/customSecurityAttributeDefinitions",
    "value": [
        {
            "attributeSet": "Engineering",
            "description": "Active projects for user",
            "id": "Engineering_Project",
            "isCollection": true,
            "isSearchable": true,
            "name": "Project",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": true
        },
        {
            "attributeSet": "Engineering",
            "description": "Target completion date",
            "id": "Engineering_ProjectDate",
            "isCollection": false,
            "isSearchable": true,
            "name": "ProjectDate",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": false
        },
        {
            "attributeSet": "Operations",
            "description": "Target completion date",
            "id": "Operations_Level",
            "isCollection": false,
            "isSearchable": true,
            "name": "Deployment level",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": true
        }
    ]
}
```

### Example 2: Filter custom security attributes based on name

The following example retrieves custom security attribute definitions that are named `Project` and are active.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_customsecurityattributedefinition_filter_name"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions?$filter=name+eq+'Project'%20and%20status+eq+'Available'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-customsecurityattributedefinition-filter-name-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-customsecurityattributedefinition-filter-name-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-customsecurityattributedefinition-filter-name-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-customsecurityattributedefinition-filter-name-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-customsecurityattributedefinition-filter-name-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-customsecurityattributedefinition-filter-name-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customSecurityAttributeDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/customSecurityAttributeDefinitions",
    "value": [
        {
            "attributeSet": "Engineering",
            "description": "Active projects for user",
            "id": "Engineering_Project",
            "isCollection": true,
            "isSearchable": true,
            "name": "Project",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": true
        },
        {
            "attributeSet": "Operations",
            "description": "Approved projects",
            "id": "Operations_Project",
            "isCollection": true,
            "isSearchable": true,
            "name": "Project",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": true
        }
    ]
}
```

### Example 3: Filter custom security attributes based on attribute set

The following example retrieves custom security attribute definitions that are in the `Engineering` attribute set, are active, and of type String.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_customsecurityattributedefinition_filter_attributeset"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/customSecurityAttributeDefinitions?$filter=attributeSet+eq+'Engineering'%20and%20status+eq+'Available'%20and%20type+eq+'String'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-customsecurityattributedefinition-filter-attributeset-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-customsecurityattributedefinition-filter-attributeset-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-customsecurityattributedefinition-filter-attributeset-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-customsecurityattributedefinition-filter-attributeset-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-customsecurityattributedefinition-filter-attributeset-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-customsecurityattributedefinition-filter-attributeset-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customSecurityAttributeDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/customSecurityAttributeDefinitions",
    "value": [
        {
            "attributeSet": "Engineering",
            "description": "Active projects for user",
            "id": "Engineering_Project",
            "isCollection": true,
            "isSearchable": true,
            "name": "Project",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": true
        },
        {
            "attributeSet": "Engineering",
            "description": "Target completion date (YYYY/MM/DD)",
            "id": "Engineering_ProjectDate",
            "isCollection": false,
            "isSearchable": true,
            "name": "ProjectDate",
            "status": "Available",
            "type": "String",
            "usePreDefinedValuesOnly": false
        }
    ]
}
```

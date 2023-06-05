---
title: "List attributeSets"
description: "Get a list of the attributeSet objects and their properties."
author: "CecilyK"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List attributeSets

Namespace: microsoft.graph

Get a list of the [attributeSet](../resources/attributeset.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.Read.All, CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.Read.All, CustomSecAttributeDefinition.ReadWrite.All|

[!INCLUDE [rbac-customsecurityattibutes-apis-definition-assignment-read](../includes/rbac-for-apis/rbac-customsecurityattibutes-apis-definition-assignment-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/attributeSets
```

## Optional query parameters

This method supports the `$select`, `$top`, and `$orderBy` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [attributeSet](../resources/attributeset.md) objects in the response body.

## Examples

### Example 1: Get all attribute sets

The following example gets all attribute sets in a tenant.

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_attributeset_all"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/directory/attributeSets
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attributeSet)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directory/attributeSets",
    "value": [
        {
            "description": "Attributes for engineering team",
            "id": "Engineering",
            "maxAttributesPerSet": 25
        },
        {
            "description": "Attributes for marketing team",
            "id": "Marketing",
            "maxAttributesPerSet": 25
        }
    ]
}
```

### Example 2: Get top attribute sets

The following example gets the top 10 attribute sets with support for paging.

#### Request

The following is an example of a request.


<!-- {
  "blockType": "request",
  "name": "list_attributeset_top"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/directory/attributeSets?$top=10
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attributeSet)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directory/attributeSets",
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/directory/attributeSets?$top=10&$skiptoken={skiptoken}",
    "value": [
        {
            "description": "Attributes for engineering team",
            "id": "Engineering",
            "maxAttributesPerSet": 25
        },
        {
            "description": "Attributes for marketing team",
            "id": "Marketing",
            "maxAttributesPerSet": 25
        }
    ]
}
```

### Example 3: Get attribute sets in order

The following example gets attribute sets ordered by ID.

#### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_attributeset_orderby"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/directory/attributeSets?$orderBy=id
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attributeSet)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directory/attributeSets",
    "value": [
        {
            "description": "Attributes for applications",
            "id": "Application",
            "maxAttributesPerSet": 25
        },
        {
            "description": "Attributes for engineering team",
            "id": "Engineering",
            "maxAttributesPerSet": 25
        }
    ]
}
```

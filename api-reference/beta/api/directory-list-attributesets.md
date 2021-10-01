---
title: "List attributeSets"
description: "Get a list of the attributeSet objects and their properties."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List attributeSets
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [attributeSet](../resources/attributeset.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.Read.All (Available soon), CustomSecAttributeAssignment.Read.All (Available soon), CustomSecAttributeDefinition.ReadWrite.All, CustomSecAttributeAssignment.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.Read.All (Available soon), CustomSecAttributeAssignment.Read.All (Available soon), CustomSecAttributeDefinition.ReadWrite.All, CustomSecAttributeAssignment.ReadWrite.All|

The signed-in user must also be assigned the Attribute Definition Reader, Attribute Assignment Reader, Attribute Definition Administrator, or Attribute Assignment Administrator directory roles that permits them to list attribute sets. By default, Global Administrator, Global Reader, Privileged Role Administrator, and User Administrator do not have permissions to read, filter, define, manage, or assign custom security attributes.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/attributeSets
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
<!-- {
  "blockType": "request",
  "name": "list_attributeset_all"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/attributeSets
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attributeSet)"
  "name": "list_attributeset_all"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/attributeSets",
    "value": [
        {
            "description": "Attributes for engineering team",
            "id": "Engineering",
            "maxAttributesPerSet": 25
        },
        {
            "description": "Attributes for operations team",
            "id": "Operations",
            "maxAttributesPerSet": 25
        }
    ]
}
```

### Example 2: Get top attribute sets

The following example gets the top 10 attribute sets with support for paging.

#### Request
<!-- {
  "blockType": "request",
  "name": "list_attributeset_top"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/attributeSets?$top=10
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attributeSet)"
  "name": "list_attributeset_top"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/attributeSets",
    "@odata.nextLink": "https://graph.microsoft.com/beta/directory/attributeSets?$top=10&$skiptoken={skiptoken}",
    "value": [
        {
            "description": "Attributes for engineering team",
            "id": "Engineering",
            "maxAttributesPerSet": 25
        },
        {
            "description": "Attributes for operations team",
            "id": "Operations",
            "maxAttributesPerSet": 25
        }
    ]
}
```

### Example 3: Get attribute sets in order

The following example gets attribute sets ordered by id.

#### Request
<!-- {
  "blockType": "request",
  "name": "list_attributeset_orderby"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/attributeSets?$orderBy=id
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attributeSet)"
  "name": "list_attributeset_orderby"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/attributeSets",
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

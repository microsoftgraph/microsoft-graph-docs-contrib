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

The signed-in user must also be assigned one of the following [directory roles](/azure/active-directory/roles/permissions-reference):

+ Attribute Assignment Reader
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

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_attributeset"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/directory/attributeSets
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.attributeSet",
      "id": "58b91e55-5f03-83f0-e1bd-29c0c532e514",
      "description": "String",
      "maxAttributesPerSet": "Integer"
    }
  ]
}
```

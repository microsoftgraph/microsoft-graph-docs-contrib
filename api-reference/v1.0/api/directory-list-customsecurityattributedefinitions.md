---
title: "List customSecurityAttributeDefinitions"
description: "Get a list of the customSecurityAttributeDefinition objects and their properties."
author: "CecilyK"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List customSecurityAttributeDefinitions
Namespace: microsoft.graph

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
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_customsecurityattributedefinition"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/directory/customSecurityAttributeDefinitions
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.customSecurityAttributeDefinition",
      "id": "ae2dd02c-6061-896c-9f53-3583b6a7163b",
      "attributeSet": "String",
      "description": "String",
      "isCollection": "Boolean",
      "isSearchable": "Boolean",
      "name": "String",
      "status": "String",
      "type": "String",
      "usePreDefinedValuesOnly": "Boolean"
    }
  ]
}
```

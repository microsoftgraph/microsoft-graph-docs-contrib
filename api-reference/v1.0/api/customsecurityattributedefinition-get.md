---
title: "Get customSecurityAttributeDefinition"
description: "Read the properties and relationships of a customSecurityAttributeDefinition object."
author: "CecilyK"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get customSecurityAttributeDefinition
Namespace: microsoft.graph

Read the properties and relationships of a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.Read.All, CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.Read.All, CustomSecAttributeDefinition.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/customSecurityAttributeDefinitions/{customSecurityAttributeDefinitionId}
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

If successful, this method returns a `200 OK` response code and a [customSecurityAttributeDefinition](../resources/customsecurityattributedefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_customsecurityattributedefinition"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/directory/customSecurityAttributeDefinitions/{customSecurityAttributeDefinitionId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customSecurityAttributeDefinition"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```


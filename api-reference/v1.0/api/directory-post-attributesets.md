---
title: "Create attributeSet"
description: "Create a new attributeSet object."
author: "CecilyK"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Create attributeSet
Namespace: microsoft.graph

Create a new [attributeSet](../resources/attributeset.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.ReadWrite.All|

The signed-in user must also be assigned the Attribute Definition Administrator [directory role](/azure/active-directory/roles/permissions-reference). By default, Global Administrator and other administrator roles do not have permissions to read, define, or assign custom security attributes.


<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/attributeSets
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [attributeSet](../resources/attributeset.md) object.

The following table shows the properties that you can configure when you create the [attributeSet](../resources/attributeset.md).

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the attribute set. Can be up to 128 characters long and include Unicode characters. Can be changed later. Optional.|
|id|String|Identifier for the attribute set that is unique within a tenant. Can be up to 32 characters long and include Unicode characters. Cannot contain spaces or special characters. Cannot be changed later. Case insensitive. Required.|
|maxAttributesPerSet|Int32|Maximum number of custom security attributes that can be defined in this attribute set. Default value is `null`. If not specified, the administrator can add up to the maximum of 500 active attributes per tenant. Can be changed later. Optional.|


## Response

If successful, this method returns a `201 Created` response code and an [attributeSet](../resources/attributeset.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_attributeset_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/directory/attributeSets
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.attributeSet",
  "description": "String",
  "maxAttributesPerSet": "Integer"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.attributeSet"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.attributeSet",
  "id": "58b91e55-5f03-83f0-e1bd-29c0c532e514",
  "description": "String",
  "maxAttributesPerSet": "Integer"
}
```

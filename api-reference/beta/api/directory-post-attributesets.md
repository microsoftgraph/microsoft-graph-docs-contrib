---
title: "Create attributeSet"
description: "Create a new attributeSet object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Create attributeSet
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [attributeSet](../resources/attributeset.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.ReadWrite.All|

The signed-in user must also be assigned the Attribute Definition Administrator [directory role](/azure/active-directory/roles/permissions-reference). By default, Global Administrator and other administrator roles do not have permissions to read, define, or assign custom security attributes.

## HTTP request

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

The following table shows the properties that are required when you create the [attributeSet](../resources/attributeset.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier for the attribute set that is unique within a tenant.|


The following table shows the properties that are optional when you create the [attributeSet](../resources/attributeset.md).

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the attribute set.|
|maxAttributesPerSet|Int32|Maximum number of custom security attributes that can be defined in this attribute set. Value is null by default. When an attribute set is created, if the value is not specified, the administrator can assign as many attributes to a attribute set in that case. The maximum number of attributes per attribute set is controlled by the maximum number of attributes that can be created in the tenant, which is 500 attributes.|


## Response

If successful, this method returns a `201 Created` response code and an [attributeSet](../resources/attributeset.md) object in the response body.

## Examples

### Example: Add an attribute set

The following example adds a new attribute set named Engineering.

### Request
<!-- {
  "blockType": "request",
  "name": "create_attributeset"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/attributeSets
Content-Type: application/json

{
    "id":"Engineering",
    "description":"Attributes for engineering team",
    "maxAttributesPerSet":25
}
```


### Response
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/attributeSets/$entity",
    "description": "Attributes for engineering team",
    "id": "Engineering",
    "maxAttributesPerSet": 25
}
```

---
title: "Update attributeSet"
description: "Update the properties of an attributeSet object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Update attributeSet
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [attributeSet](../resources/attributeset.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.ReadWrite.All|

The signed-in user must also be assigned the Attribute Definition Administrator directory role that permits them to update attribute sets. By default, Global Administrator, Global Reader, Privileged Role Administrator, and User Administrator do not have permissions to read, filter, define, manage, or assign custom security attributes.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/attributeSets/{attributeSetId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [attributeSet](../resources/attributeset.md) object.

The following table shows the properties that are required when you update the [attributeSet](../resources/attributeset.md).

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the attribute set.|
|id|String|**TODO: Add Description**|
|maxAttributesPerSet|Int32|Maximum number of custom security attributes that can be defined in this attribute set.|



## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Example: Update an attribute set

The following example updates the description and the maximum number of attributes for the Engineering attribute set.

#### Request
<!-- {
  "blockType": "request",
  "name": "update_attributeset"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/attributeSets/Engineering
Content-Type: application/json
Content-length: 119

{
    "description":"Attributes for engineering team",
    "maxAttributesPerSet":20
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "update_attributeset"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
```

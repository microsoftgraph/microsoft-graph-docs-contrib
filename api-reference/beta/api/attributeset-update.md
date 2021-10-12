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

The signed-in user must also be assigned the Attribute Definition Administrator [directory role](/azure/active-directory/roles/permissions-reference). By default, Global Administrator and other administrator roles do not have permissions to read, define, or assign custom security attributes.

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

The following table shows the properties that you can update for the [attributeSet](../resources/attributeset.md).

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the attribute set.|
|maxAttributesPerSet|Int32|Maximum number of custom security attributes that can be defined in this attribute set. Value is null by default. When an attribute set is created, if the value is not specified, the administrator can assign as many attributes to a attribute set in that case. The maximum number of attributes per attribute set is controlled by the maximum number of attributes that can be created in the tenant, which is 500 attributes.|



## Response

If successful, this method returns a `204 No Content` response code.

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
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

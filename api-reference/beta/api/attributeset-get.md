---
title: "Get attributeSet"
description: "Read the properties and relationships of an attributeSet object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Get attributeSet
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [attributeSet](../resources/attributeset.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomSecAttributeDefinition.Read.All (Available soon), CustomSecAttributeAssignment.Read.All (Available soon), CustomSecAttributeDefinition.ReadWrite.All, CustomSecAttributeAssignment.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CustomSecAttributeDefinition.Read.All (Available soon), CustomSecAttributeAssignment.Read.All (Available soon), CustomSecAttributeDefinition.ReadWrite.All, CustomSecAttributeAssignment.ReadWrite.All|

The signed-in user must also be assigned the Attribute Definition Reader, Attribute Assignment Reader, Attribute Definition Administrator, or Attribute Assignment Administrator directory roles that permits them to read attribute sets. By default, Global Administrator, Global Reader, Privileged Role Administrator, and User Administrator do not have permissions to read, filter, define, manage, or assign custom security attributes.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/attributeSets/{attributeSetId}
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

If successful, this method returns a `200 OK` response code and an [attributeSet](../resources/attributeset.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_attributeset"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/attributeSets/{attributeSetId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.attributeSet"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.attributeSet",
    "description": "String",
    "id": "7faca33b-a33b-7fac-3ba3-ac7f3ba3ac7f",
    "maxAttributesPerSet": "Integer"
  }
}
```

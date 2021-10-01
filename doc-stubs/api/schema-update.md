---
title: "Update schema"
description: "Update the properties of a schema object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update schema
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [schema](../resources/schema.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /external/connections/{externalConnectionId}/schema
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [schema](../resources/schema.md) object.

The following table shows the properties that are required when you update the [schema](../resources/schema.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|baseType|String|**TODO: Add Description**|
|properties|[property](../resources/property.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [schema](../resources/schema.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_schema"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/external/connections/{externalConnectionId}/schema
Content-Type: application/json
Content-length: 161

{
  "@odata.type": "#microsoft.graph.schema",
  "baseType": "String",
  "properties": [
    {
      "@odata.type": "microsoft.graph.property"
    }
  ]
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.schema",
  "id": "87ba9051-9051-87ba-5190-ba875190ba87",
  "baseType": "String",
  "properties": [
    {
      "@odata.type": "microsoft.graph.property"
    }
  ]
}
```


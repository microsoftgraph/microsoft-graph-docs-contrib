---
title: "Update extensions"
description: "Update the properties of an extensions object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update extensions
Namespace: microsoft.graph

Update the properties of an extensions object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
PATCH /directory/administrativeUnits/{administrativeUnitId}/extensions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [extension](../resources/extension.md) object.

The following table shows the properties that are required when you create the [extension](../resources/extension.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [extension](../resources/extension.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_extensions"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/directory/administrativeUnits/{administrativeUnitId}/extensions
Content-Type: application/json
Content-length: 51

{
  "@odata.type": "#microsoft.graph.extension"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.extension",
  "id": "23cb1abd-1abd-23cb-bd1a-cb23bd1acb23"
}
```


---
title: "Add tag"
description: "Add parent by posting to the parent collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Add tag
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add parent by posting to the parent collection.

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
POST /compliance/ediscovery/cases/{caseId}/tags/{tagId}/parent/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [tag](../resources/ediscovery-tag.md) object.

The following table shows the properties that are required when you create the [tag](../resources/ediscovery-tag.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|childSelectability|childSelectability|**TODO: Add Description**. Possible values are: `One`, `Many`.|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|



## Response

If successful, this method returns a `204 No Content` response code and a [tag](../resources/ediscovery-tag.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_tag_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/tags/{tagId}/parent/$ref
Content-Type: application/json
Content-length: 221

{
  "@odata.type": "#microsoft.graph.ediscovery.tag",
  "displayName": "String",
  "description": "String",
  "childSelectability": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.tag"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ediscovery.tag",
  "id": "163ea8e2-a8e2-163e-e2a8-3e16e2a83e16",
  "displayName": "String",
  "description": "String",
  "childSelectability": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```


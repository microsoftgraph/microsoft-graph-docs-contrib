---
title: "Update reviewSetQuery"
description: "Update the properties of a reviewSetQuery object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update reviewSetQuery
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [reviewSetQuery](../resources/ediscovery-reviewsetquery.md) object.

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
PATCH /compliance/ediscovery/cases/{caseId}/reviewSets/{reviewSetId}/queries/{reviewSetQueryId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [reviewSetQuery](../resources/ediscovery-reviewsetquery.md) object.

The following table shows the properties that are required when you update the [reviewSetQuery](../resources/ediscovery-reviewsetquery.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|query|String|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [reviewSetQuery](../resources/ediscovery-reviewsetquery.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_reviewsetquery"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/reviewSets/{reviewSetId}/queries/{reviewSetQueryId}
Content-Type: application/json
Content-length: 191

{
  "@odata.type": "#microsoft.graph.ediscovery.reviewSetQuery",
  "query": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "displayName": "String"
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
  "@odata.type": "#microsoft.graph.ediscovery.reviewSetQuery",
  "id": "33d95cfd-5cfd-33d9-fd5c-d933fd5cd933",
  "query": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```


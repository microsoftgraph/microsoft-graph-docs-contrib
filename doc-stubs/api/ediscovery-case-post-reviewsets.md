---
title: "Create reviewSet"
description: "Create a new reviewSet object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create reviewSet
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new reviewSet object.

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
POST /compliance/ediscovery/cases/{caseId}/reviewSets
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [reviewSet](../resources/ediscovery-reviewset.md) object.

The following table shows the properties that are required when you create the [reviewSet](../resources/ediscovery-reviewset.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [reviewSet](../resources/ediscovery-reviewset.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_reviewset_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/reviewSets
Content-Type: application/json
Content-length: 164

{
  "@odata.type": "#microsoft.graph.ediscovery.reviewSet",
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
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.reviewSet"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ediscovery.reviewSet",
  "id": "e003672c-672c-e003-2c67-03e02c6703e0",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```


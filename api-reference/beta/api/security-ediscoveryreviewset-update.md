---
title: "Update ediscoveryReviewSet"
description: "Update the properties of an ediscoveryReviewSet object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update ediscoveryReviewSet
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.

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
PATCH /ediscoveryExportOperation/reviewSet
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [dataSet](../resources/security-dataset.md). Optional.|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [dataSet](../resources/security-dataset.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSet](../resources/security-dataset.md). Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_ediscoveryreviewset"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/ediscoveryExportOperation/reviewSet
Content-Type: application/json
Content-length: 172

{
  "@odata.type": "#microsoft.graph.security.ediscoveryReviewSet",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


### Response
The following is an example of the response
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
  "@odata.type": "#microsoft.graph.security.ediscoveryReviewSet",
  "id": "6523d676-47c8-1ecc-b16d-5aca625f22b1",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```


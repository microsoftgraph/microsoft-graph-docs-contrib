---
title: "Add ediscoveryReviewTag"
description: "Add parent by posting to the parent collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Add ediscoveryReviewTag
Namespace: microsoft.graph.security

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
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/files/{ediscoveryFileId}/tags/{ediscoveryReviewTagId}/parent/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.

You can specify the following properties when creating an **ediscoveryReviewTag**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [tag](../resources/security-tag.md). Optional.|
|description|String|**TODO: Add Description** Inherited from [tag](../resources/security-tag.md). Optional.|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [tag](../resources/security-tag.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [tag](../resources/security-tag.md). Optional.|
|childSelectability|childSelectability|**TODO: Add Description**. The possible values are: `One`, `Many`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `204 No Content` response code and an [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_ediscoveryreviewtag_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/files/{ediscoveryFileId}/tags/{ediscoveryReviewTagId}/parent/$ref
Content-Type: application/json
Content-length: 235

{
  "@odata.type": "#microsoft.graph.security.ediscoveryReviewTag",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "childSelectability": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryReviewTag"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.ediscoveryReviewTag",
  "id": "0caa0358-8777-33e3-685e-922bf1ad44d7",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "childSelectability": "String"
}
```


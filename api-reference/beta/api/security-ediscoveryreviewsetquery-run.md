---
title: "ediscoveryReviewSetQuery: run"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# ediscoveryReviewSetQuery: run
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

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
GET /ediscoveryExportOperation/reviewSetQuery/run
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "ediscoveryreviewsetquerythis.run"
}
-->
``` http
GET https://graph.microsoft.com/beta/ediscoveryExportOperation/reviewSetQuery/run
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.ediscoveryFile)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.ediscoveryFile",
      "id": "String (identifier)",
      "dateTime": "String (timestamp)",
      "size": "Integer",
      "name": "String",
      "sourceType": "String",
      "senderAuthor": [
        "String"
      ],
      "subjectTitle": "String",
      "extension": "String",
      "mediaType": "String",
      "content": "Stream",
      "extractedTextContent": "Stream",
      "processingStatus": "String",
      "otherProperties": {
        "@odata.type": "microsoft.graph.security.stringValueDictionary"
      }
    }
  ]
}
```


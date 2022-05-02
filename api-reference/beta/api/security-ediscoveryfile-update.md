---
title: "Update ediscoveryFile"
description: "Update the properties of an ediscoveryFile object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update ediscoveryFile
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [ediscoveryFile](../resources/security-ediscoveryfile.md) object.

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
PATCH /security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/files/{ediscoveryFileId}
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
|dateTime|DateTimeOffset|**TODO: Add Description** Inherited from [file](../resources/security-file.md). Optional.|
|size|Int64|**TODO: Add Description** Inherited from [file](../resources/security-file.md). Optional.|
|name|String|**TODO: Add Description** Inherited from [file](../resources/security-file.md). Optional.|
|sourceType|sourceType|**TODO: Add Description** Inherited from [file](../resources/security-file.md). The possible values are: `mailbox`, `site`, `unknownFutureValue`. Optional.|
|senderAuthor|String collection|**TODO: Add Description** Inherited from [file](../resources/security-file.md). Optional.|
|subjectTitle|String|**TODO: Add Description** Inherited from [file](../resources/security-file.md). Optional.|
|extension|String|**TODO: Add Description** Inherited from [file](../resources/security-file.md). Optional.|
|mediaType|String|**TODO: Add Description** Inherited from [file](../resources/security-file.md). Optional.|
|content|Stream|**TODO: Add Description** Inherited from [file](../resources/security-file.md). Optional.|
|extractedTextContent|Stream|**TODO: Add Description** Inherited from [file](../resources/security-file.md). Optional.|
|processingStatus|fileProcessingStatus|**TODO: Add Description** Inherited from [file](../resources/security-file.md). The possible values are: `success`, `internalError`, `unknownError`, `processingTimeout`, `invalidFileId`, `fileSizeIsZero`, `fileSizeIsTooLarge`, `fileDepthLimitExceeded`, `fileBodyIsTooLong`, `fileTypeIsUnknown`, `fileTypeIsNotSupported`, `malformedFile`, `protectedFile`, `poisonFile`, `noReviewSetSummaryGenerated`, `extractionException`, `ocrProcessingTimeout`, `ocrFileSizeExceedsLimit`, `unknownFutureValue`. Optional.|
|otherProperties|[microsoft.graph.security.stringValueDictionary](../resources/security-stringvaluedictionary.md)|**TODO: Add Description** Inherited from [file](../resources/security-file.md). Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [ediscoveryFile](../resources/security-ediscoveryfile.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_ediscoveryfile"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/reviewSets/{ediscoveryReviewSetId}/files/{ediscoveryFileId}
Content-Type: application/json
Content-length: 487

{
  "@odata.type": "#microsoft.graph.security.ediscoveryFile",
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
  "@odata.type": "#microsoft.graph.security.ediscoveryFile",
  "id": "ac6811f5-e717-68dc-48cb-019b04e7c6a3",
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
```


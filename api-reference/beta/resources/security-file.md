---
title: "file resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# file resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List files](../api/security-file-list.md)|[microsoft.graph.security.file](../resources/security-file.md) collection|Get a list of the [file](../resources/security-file.md) objects and their properties.|
|[Get file](../api/security-file-get.md)|[microsoft.graph.security.file](../resources/security-file.md)|Read the properties and relationships of a [file](../resources/security-file.md) object.|
|[Update file](../api/security-file-update.md)|[microsoft.graph.security.file](../resources/security-file.md)|Update the properties of a [file](../resources/security-file.md) object.|
|[Delete file](../api/security-file-delete.md)|None|Deletes a [file](../resources/security-file.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|Stream|**TODO: Add Description**|
|dateTime|DateTimeOffset|**TODO: Add Description**|
|extension|String|**TODO: Add Description**|
|extractedTextContent|Stream|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|mediaType|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|otherProperties|[microsoft.graph.security.stringValueDictionary](../resources/security-stringvaluedictionary.md)|**TODO: Add Description**|
|processingStatus|fileProcessingStatus|**TODO: Add Description**.The possible values are: `success`, `internalError`, `unknownError`, `processingTimeout`, `invalidFileId`, `fileSizeIsZero`, `fileSizeIsTooLarge`, `fileDepthLimitExceeded`, `fileBodyIsTooLong`, `fileTypeIsUnknown`, `fileTypeIsNotSupported`, `malformedFile`, `protectedFile`, `poisonFile`, `noReviewSetSummaryGenerated`, `extractionException`, `ocrProcessingTimeout`, `ocrFileSizeExceedsLimit`, `unknownFutureValue`.|
|senderAuthor|String collection|**TODO: Add Description**|
|size|Int64|**TODO: Add Description**|
|sourceType|sourceType|**TODO: Add Description**.The possible values are: `mailbox`, `site`, `unknownFutureValue`.|
|subjectTitle|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.file",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.file",
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
```


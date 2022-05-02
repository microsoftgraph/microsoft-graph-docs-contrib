---
title: "ediscoveryFile resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryFile resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [file](../resources/security-file.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryFiles](../api/security-ediscoveryreviewset-list-files.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) collection|Get a list of the [ediscoveryFile](../resources/security-ediscoveryfile.md) objects and their properties.|
|[Create ediscoveryFile](../api/security-ediscoveryreviewset-post-files.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md)|Create a new [ediscoveryFile](../resources/security-ediscoveryfile.md) object.|
|[Get ediscoveryFile](../api/security-ediscoveryfile-get.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md)|Read the properties and relationships of an [ediscoveryFile](../resources/security-ediscoveryfile.md) object.|
|[Update ediscoveryFile](../api/security-ediscoveryfile-update.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md)|Update the properties of an [ediscoveryFile](../resources/security-ediscoveryfile.md) object.|
|[Delete ediscoveryFile](../api/security-ediscoveryreviewset-delete-files.md)|None|Deletes an [ediscoveryFile](../resources/security-ediscoveryfile.md) object.|
|[List ediscoveryCustodian](../api/security-ediscoveryfile-list-custodian.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md) collection|Get the ediscoveryCustodian resources from the custodian navigation property.|
|[Add ediscoveryCustodian](../api/security-ediscoveryfile-post-custodian.md)|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Add custodian by posting to the custodian collection.|
|[Remove ediscoveryCustodian](../api/security-ediscoveryfile-delete-custodian.md)|None|Remove an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md) object.|
|[List tags](../api/security-ediscoveryfile-list-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|Get the ediscoveryReviewTag resources from the tags navigation property.|
|[Add ediscoveryReviewTag](../api/security-ediscoveryfile-post-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Add tags by posting to the tags collection.|
|[Remove tags](../api/security-ediscoveryfile-delete-tags.md)|None|Remove an [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|Stream|**TODO: Add Description** Inherited from [file](../resources/security-file.md).|
|dateTime|DateTimeOffset|**TODO: Add Description** Inherited from [file](../resources/security-file.md).|
|extension|String|**TODO: Add Description** Inherited from [file](../resources/security-file.md).|
|extractedTextContent|Stream|**TODO: Add Description** Inherited from [file](../resources/security-file.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|mediaType|String|**TODO: Add Description** Inherited from [file](../resources/security-file.md).|
|name|String|**TODO: Add Description** Inherited from [file](../resources/security-file.md).|
|otherProperties|[microsoft.graph.security.stringValueDictionary](../resources/security-stringvaluedictionary.md)|**TODO: Add Description** Inherited from [file](../resources/security-file.md).|
|processingStatus|fileProcessingStatus|**TODO: Add Description** Inherited from [file](../resources/security-file.md).The possible values are: `success`, `internalError`, `unknownError`, `processingTimeout`, `invalidFileId`, `fileSizeIsZero`, `fileSizeIsTooLarge`, `fileDepthLimitExceeded`, `fileBodyIsTooLong`, `fileTypeIsUnknown`, `fileTypeIsNotSupported`, `malformedFile`, `protectedFile`, `poisonFile`, `noReviewSetSummaryGenerated`, `extractionException`, `ocrProcessingTimeout`, `ocrFileSizeExceedsLimit`, `unknownFutureValue`.|
|senderAuthor|String collection|**TODO: Add Description** Inherited from [file](../resources/security-file.md).|
|size|Int64|**TODO: Add Description** Inherited from [file](../resources/security-file.md).|
|sourceType|sourceType|**TODO: Add Description** Inherited from [file](../resources/security-file.md).The possible values are: `mailbox`, `site`, `unknownFutureValue`.|
|subjectTitle|String|**TODO: Add Description** Inherited from [file](../resources/security-file.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|custodian|[ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|**TODO: Add Description**|
|tags|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryFile",
  "baseType": "microsoft.graph.security.file",
  "openType": false
}
-->
``` json
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
```


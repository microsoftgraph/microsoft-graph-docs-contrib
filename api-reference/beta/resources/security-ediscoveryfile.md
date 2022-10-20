---
title: "ediscoveryFile resource type"
description: "Represents an eDiscovery file."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryFile resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity that represents ediscovery ReviewSet files.
## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryFiles](../api/security-ediscoveryreviewset-list-files.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) collection|Get a list of the [ediscoveryFile](../resources/security-ediscoveryfile.md) objects and their properties.|
|[Get ediscoveryFile](../api/security-ediscoveryfile-get.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md)|Read the properties and relationships of an [ediscoveryFile](../resources/security-ediscoveryfile.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|Stream|The content stream of the original file.|
|dateTime|DateTimeOffset|The datetime the file was last modified. See dateTime values for more details.|
|extension|String|The file extension of the file such as png, msg, docx etc.|
|extractedTextContent|Stream|The extracted text from the original file. For image based files, this would be the OCR text.|
|id|String|The unique identifier for the file.|
|mediaType|String|mimeType of the file. Eg: text/plain, charset=UTF-8, application/vnd.ms-outlook.|
|name|String|The name of the file. Subject of the mail in case of email.|
|otherProperties|microsoft.graph.security.stringValueDictionary|A list of additional properties of the file like titleOfSharepointDocument, emailRecipients. [Learn more](/microsoft-365/compliance/document-metadata-fields-in-advanced-ediscovery).|
|processingStatus|microsoft.graph.security.fileProcessingStatus|The processing status after the item was added to a review set. The possible values are: `success`, `internalError`, `unknownError`, `processingTimeout`, `invalidFileId`, `fileSizeIsZero`, `fileSizeIsTooLarge`, `fileDepthLimitExceeded`, `fileBodyIsTooLong`, `fileTypeIsUnknown`, `fileTypeIsNotSupported`, `malformedFile`, `protectedFile`, `poisonFile`, `noReviewSetSummaryGenerated`, `extractionException`, `ocrProcessingTimeout`, `ocrFileSizeExceedsLimit`.|
|senderAuthor|String collection|The sender of the email or authors of the document.|
|size|Int64|size of the file.|
|sourceType|microsoft.graph.security.sourceType|The original source of the content. The possible values are: `mailbox`, `site`.|
|subjectTitle|String|The subject of the email or title of the document|

### fileProcessingStatus values

|Member|Description|
|:----|-----------|
|success|	File was successfully processed.|
|internalError| Unhandled exception occurred during processing the file.|
|unknownError|status of processing is null or empty.|
|processingTimeout|Timeout occurred during processing.|
|invalidFileId|Failed to create a unique field id has for the file.|
|fileSizeIsZero|File size is zero or negative.|
|fileSizeIsTooLarge|File size exceeds the limits for processing.|
|fileDepthLimitExceeded|File depth exceeded the processing limit (30).|
|fileBodyIsTooLong|The length of texts in the document exceeds the processing limit.|
|fileTypeIsUnknown|	MimeType not supported.|
|fileTypeIsNotSupported| File format not supported.|
|malformedFile|File is malformed.|
|protectedFile|An email is rights protected or a document is encrypted.|
|poisonFile|File already processed.|
|noReviewSetSummaryGenerated|Generation of review set summary failed.|
|extractionException|Extraction of embedded documents failed.|
|ocrProcessingTimeout|Timeout while ocrProcessing of the file.|
|ocrFileSizeExceedsLimit|File size exceeds the limits for OCR processing.|


### dateTime values
|File type|Definition|
|:---|:---|
Email |Sent date.
Email attachments | Last modified date of the document;if not available, the parent's Sent date.
Embedded documents | Last modified date of the document; if not available, the parent's last modified date.
SPO documents (includes modern attachments) | SharePoint Last modified date; if not available, the documents last modified date.
Non-Office 365 documents | Last modified date.
Meetings | Meeting start date.
VoiceMail | Sent date.
IM |Sent date.
## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|custodian|[microsoft.graph.security.ediscoveryCustodian](../resources/security-ediscoverycustodian.md)|Custodians associated with the file.|
|tags|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|Tags associated with the file.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryFile",
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

---
title: "documentProcessingJob resource type"
description: "The documentProcessingJob resource provides the information to process a document, or documents in a folde"
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# documentProcessingJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The documentProcessingJob resource provides the information to process a document, or documents in a folder with [contentModel](../resources/contentmodel.md)s.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/site-post-documentprocessingjobs.md)|[documentProcessingJob](../resources/documentprocessingjob.md)|Create a new [documentProcessingJob](../resources/documentprocessingjob.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of item creation. Read-only.|
|id|String|The Id of the document processing job. Read-only.|
|jobType|documentProcessingJobType|the Document Processing Job type. The possible values are: `File`, `Folder`|
|listItemUniqueId|String|The listItemUniqueId of the file, or folder to process. It is one of the sharepointIds. It can be retrieved by Drive item Graph API. Check out sharepointIds for more details.|
|status|documentProcessingJobStatus|The Document Processing Job status. The possible values are: `inProgress`, `completed`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.documentProcessingJob",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.documentProcessingJob",
  "id": "String (identifier)",
  "jobType": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "listItemUniqueId": "String"
}
```


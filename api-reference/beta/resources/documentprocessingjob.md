---
title: "documentProcessingJob resource type"
description: "Provides the information to process a document, or documents in a folder."
author: "travislius"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 06/11/2024
---

# documentProcessingJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information related to the processing of a document or documents in a folder by an applied [contentModel](../resources/contentmodel.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/site-post-documentprocessingjobs.md)|[documentProcessingJob](../resources/documentprocessingjob.md)|Create a new **documentProcessingJob** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of item creation. Read-only.|
|Id|String|The ID of the document processing job. Read-only.|
|jobType|documentProcessingJobType|The document processing job type. The possible values are: `file`, `folder`|
|listItemUniqueId|String|The listItemUniqueId of the file, or folder to process. Use GET [driveItem](../resources/driveitem.md) resource operation and read  [sharepointIds](../resources/sharepointids.md) property to get listItemUniqueId.|
|status|documentProcessingJobStatus|The document processing Job status. The possible values are: `inProgress`, `completed`, `failed`, `unknownFutureValue`.|

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


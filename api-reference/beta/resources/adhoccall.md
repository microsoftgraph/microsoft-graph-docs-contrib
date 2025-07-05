---
title: "adhocCall resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 07/04/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# adhocCall resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/user-list-adhoccalls.md)|[adhocCall](../resources/adhoccall.md) collection|Get a list of the adhocCall objects and their properties.|
|[Create](../api/user-post-adhoccalls.md)|[adhocCall](../resources/adhoccall.md)|Create a new adhocCall object.|
|[Get](../api/adhoccall-get.md)|[adhocCall](../resources/adhoccall.md)|Read the properties and relationships of [adhocCall](../resources/adhoccall.md) object.|
|[Update](../api/adhoccall-update.md)|[adhocCall](../resources/adhoccall.md)|Update the properties of an adhocCall object.|
|[Delete](../api/user-delete-adhoccalls.md)|None|Delete an adhocCall object.|
|[getAllRecordings](../api/adhoccall-getallrecordings.md)|[callRecording](../resources/callrecording.md) collection|**TODO: Add Description**|
|[getAllTranscripts](../api/adhoccall-getalltranscripts.md)|[callTranscript](../resources/calltranscript.md) collection|**TODO: Add Description**|
|[List recordings](../api/adhoccall-list-recordings.md)|[callRecording](../resources/callrecording.md) collection|**TODO: Add a useful description.**|
|[Create callRecording](../api/adhoccall-post-recordings.md)|[callRecording](../resources/callrecording.md)|Create a new callRecording object.|
|[List transcripts](../api/adhoccall-list-transcripts.md)|[callTranscript](../resources/calltranscript.md) collection|**TODO: Add a useful description.**|
|[Create callTranscript](../api/adhoccall-post-transcripts.md)|[callTranscript](../resources/calltranscript.md)|Create a new callTranscript object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|recordings|[callRecording](../resources/callrecording.md) collection|**TODO: Add Description**|
|transcripts|[callTranscript](../resources/calltranscript.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adhocCall",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adhocCall",
  "id": "String (identifier)"
}
```


---
title: "adhocCall resource type"
description: "Contains information about an adhoc call."
author: "kanchm"
ms.date: 07/04/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# adhocCall resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods

|Method|Return type|Description|
|:---|:---|:---|
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


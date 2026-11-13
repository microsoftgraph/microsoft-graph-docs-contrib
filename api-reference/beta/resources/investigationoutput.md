---
title: "investigationOutput resource type"
description: "Represents a stored output file owned by an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# investigationOutput resource type

Namespace: microsoft.graph

Represents a stored output file owned by an agentic session. Read its **id** and **kind** metadata, or use its **id** to download the stored file through the authenticated **content** route. Metadata and content requests enforce the parent session's authorization.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List outputs](../api/investigationsession-list-outputs.md)|[investigationOutput](../resources/investigationoutput.md) collection|Get the session outputs.|
|[Get](../api/investigationoutput-get.md)|[investigationOutput](../resources/investigationoutput.md)|Read output metadata.|
|[Get content](../api/investigationoutput-get-content.md)|Stream|Download the authenticated output stream.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|content|Stream|The output bytes, retrieved through `/security/agenticSecurity/sessions/{session-id}/outputs/{output-id}/content`. The stream isn't inline in the metadata response. Read-only.|
|id|String|The stable, opaque stored-file identifier, unique within its containing session. Read-only.|
|kind|investigationOutputType|The output category. The possible values are: `summary`, `artifact`, `unknownFutureValue`. Both summary text and artifact bytes are retrieved through the authenticated content route. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.investigationOutput",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.investigationOutput",
  "id": "String (identifier)",
  "kind": "String",
  "content": "Stream"
}
```

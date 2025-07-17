---
title: "onenoteEntitySchemaObjectModel resource type"
description: "This is a base type for OneNote entities."
author: "jewan-microsoft"
ms.localizationpriority: medium
ms.subservice: "onenote"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# onenoteEntitySchemaObjectModel resource type

Namespace: microsoft.graph

This is a base type for OneNote entities.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdDateTime|DateTimeOffset|The date and time when the page was created. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "abstract": true,
  "baseType": "microsoft.graph.onenoteEntityBaseModel",
  "optionalProperties": [
    "self"
  ],
  "@odata.type": "microsoft.graph.onenoteEntitySchemaObjectModel"
}-->

```json
{
  "createdDateTime": "String (timestamp)"
}

```

<!-- uuid: bfb567de-2a2a-4b81-bf47-a55626a0c166
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "page resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


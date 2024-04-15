---
title: "addIn resource type"
description: "The following JSON representation shows the resource type."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "sureshja"
---

# addIn resource type

Namespace: microsoft.graph

Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams [may configure addIns](/onedrive/developer/file-handlers/) for its "FileHandler" functionality. The addIn resource type lets services like Microsoft 365 call the application in the context of a document the user is working on.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ID|guid||
|properties|[keyValue](keyvalue.md) collection||
|type|string||

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.addIn"
}-->

```json
{
  "id": "Guid",
  "properties": [{"@odata.type": "microsoft.graph.keyValue"}],
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "addIn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


---
title: "referencedObject resource type"
description: "Describes a reference to another object defined in the same directory definition."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 07/22/2024
---

# referencedObject resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a reference to another object defined in the same [directory definition](synchronization-directorydefinition.md).

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:--------------------------|:---------------|
|referencedObjectName        |String                     |Name of the referenced object. Must match one of the objects in the [directory definition](synchronization-directorydefinition.md).|
|referencedProperty          |String                     |**Currently not supported**. Name of the property in the referenced object, the value for which is used as the reference.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.referencedObject"
}-->

```json
{
  "referencedObjectName": "String",
  "referencedProperty": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "referencedObject resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
            



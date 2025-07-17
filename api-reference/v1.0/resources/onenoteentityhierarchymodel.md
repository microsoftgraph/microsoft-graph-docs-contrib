---
title: "onenoteEntityHierarchyModel resource type"
description: "A base type for OneNote entities."
author: "jewan-microsoft"
ms.localizationpriority: medium
ms.subservice: onenote
doc_type: resourcePageType
ms.date: 08/08/2024
---

# onenoteEntityHierarchyModel resource type

Namespace: microsoft.graph

A base type for OneNote entities.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|The name of the notebook.|
|createdBy|[identitySet](identityset.md)|Identity of the user, device, and application that created the item. Read-only.|
|lastModifiedBy|[identitySet](identityset.md)|Identity of the user, device, and application that created the item. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the notebook was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "abstract": true,
  "baseType": "microsoft.graph.onenoteEntitySchemaObjectModel",
  "optionalProperties": [
    "self"
  ],
  "@odata.type": "microsoft.graph.onenoteEntityHierarchyModel"
}-->

```json
{
  "displayName": "string",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)"
}

```

<!-- uuid: 8b1af557-1a7c-4432-86eb-94989c2d4b54
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "page resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


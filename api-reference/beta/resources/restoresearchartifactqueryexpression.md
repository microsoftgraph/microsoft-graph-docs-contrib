---
title: "restoreSearchArtifactQueryExpression resource type"
description: "Represents a structured query expression for searching artifacts in restore operations."
author: "schapagain"
ms.date: 06/05/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restoreSearchArtifactQueryExpression resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a structured query expression for searching artifacts in restore operations. This resource provides a type-safe way to construct search queries for backup artifacts.

All properties are optional and can be combined to create more specific search queries.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|hasAttachment|Boolean|Indicates whether the artifact has an attachment. Optional.|
|items|[granularRestoreItems](../resources/granularrestoreitems.md) collection|The types of items to include in the search. Optional.|
|recipients|String collection|The recipient email addresses to filter by. Optional.|
|senders|String collection|The sender email addresses to filter by. Optional.|
|subjects|String collection|The subject lines to filter by. Optional.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.restoreSearchArtifactQueryExpression"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restoreSearchArtifactQueryExpression",
  "recipients": [
    "String"
  ],
  "senders": [
    "String"
  ],
  "subjects": [
    "String"
  ],
  "items": [
    "String"
  ],
  "hasAttachment": "Boolean"
}
```

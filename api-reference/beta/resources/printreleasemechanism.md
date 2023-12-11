---
title: printReleaseMechanism resource type
description: Represents the release mechanism for print jobs.
author: jasli-985
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printReleaseMechanism resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the processing status of the printer, including any errors.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|releaseType|[printReleaseType](printreleasetype.md)|The release type of the printer.|

## JSON representation

Here's a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printReleaseMechanism"
}-->

```json
{
    "releaseType": "String"
}
```

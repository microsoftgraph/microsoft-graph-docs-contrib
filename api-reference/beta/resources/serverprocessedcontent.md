---
title: "serverProcessedContent resource type"
description: Represents the server processed content of a given web part.
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# serverProcessedContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the server processed content of a given web part.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|componentDependencies|[metaDataKeyStringPair](../resources/metadatakeystringpair.md) collection|A key-value map where keys are string identifiers and values are component ids. SharePoint servers might decide to use this hint to preload the script for corresponding components for performance boost.|
|customMetadata|[metaDataKeyValuePair](../resources/metadatakeyvaluepair.md) collection|A key-value map where keys are string identifier and values are object of custom key-value pair. |
|htmlStrings|[metaDataKeyStringPair](../resources/metadatakeystringpair.md) collection|A key-value map where keys are string identifiers and values are rich text with HTML format. SharePoint servers treat the values as HTML content and run services like safety checks, search index and link fixup on them.|
|imageSources|[metaDataKeyStringPair](../resources/metadatakeystringpair.md) collection|A key-value map where keys are string identifiers and values are image sources. SharePoint servers treat the values as image sources and run services like search index and link fixup on them.|
|links|[metaDataKeyStringPair](../resources/metadatakeystringpair.md) collection|A key-value map where keys are string identifiers and values are links. SharePoint servers treat the values as links and run services like link fixup on them.|
|searchablePlainTexts|[metaDataKeyStringPair](../resources/metadatakeystringpair.md) collection|A key-value map where keys are string identifiers and values are strings that should be search indexed.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serverProcessedContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serverProcessedContent",
  "htmlStrings": [
    {
      "@odata.type": "microsoft.graph.metaDataKeyStringPair"
    }
  ],
  "searchablePlainTexts": [
    {
      "@odata.type": "microsoft.graph.metaDataKeyStringPair"
    }
  ],
  "links": [
    {
      "@odata.type": "microsoft.graph.metaDataKeyStringPair"
    }
  ],
  "imageSources": [
    {
      "@odata.type": "microsoft.graph.metaDataKeyStringPair"
    }
  ],
  "componentDependencies": [
    {
      "@odata.type": "microsoft.graph.metaDataKeyStringPair"
    }
  ],
  "customMetadata": [
    {
      "@odata.type": "microsoft.graph.metaDataKeyValuePair"
    }
  ]
}
```


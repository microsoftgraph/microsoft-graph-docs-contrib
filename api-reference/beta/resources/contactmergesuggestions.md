---
title: "contactMergeSuggestions resource type"
description: "Represents user privacy settings for contacts merge suggestions"
author: "jagadeesh-vadivel"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# contactMergeSuggestions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this resource to disable / enable the duplicate contacts merge suggestions.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/contactmergesuggestions-get.md)|[contactMergeSuggestions](contactmergesuggestions.md)|Read the properties of a **contactMergeSuggestions** setting.|
|[Update](../api/contactmergesuggestions-update.md)|[contactMergeSuggestions](contactmergesuggestions.md)|Update the properties of a **contactMergeSuggestions** setting.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|'true' if duplicate contact merge suggestions feature is enabled for user; 'false' if duplicate contact merge suggestions feature is disabled. Default is 'true'.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.contactMergeSuggestions",
  "openType": false
}
-->
``` json
{
  "isEnabled": "Boolean"
}
```


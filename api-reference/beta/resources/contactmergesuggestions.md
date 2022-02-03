---
title: "contactMergeSuggestions resource type"
description: "Represents the status of the duplicate contact merge suggestions feature."
author: "jagadeesh-vadivel"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# contactMergeSuggestions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of the duplicate contact merge suggestions feature. Users have the option to enable or disable the duplicate contact merge suggestions feature in their privacy settings.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/contactmergesuggestions-get.md)|[contactMergeSuggestions](contactmergesuggestions.md)|Read the properties of a **contactMergeSuggestions** object.|
|[Update](../api/contactmergesuggestions-update.md)|None |Update the properties of a **contactMergeSuggestions** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|`true` if the duplicate contact merge suggestions feature is enabled for the user; `false` if the feature is disabled. Default value is `true`.|

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


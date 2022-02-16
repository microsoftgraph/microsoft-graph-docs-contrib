---
title: "contactMergeSuggestions resource type"
description: "Represents a user privacy settings to merge duplicate-contacts suggestions. The user may have the option to enable / disable the feature from privacy settings."
author: "jagadeesh-vadivel"
ms.localizationpriority: medium
ms.prod: "personal-contacts"
doc_type: resourcePageType
---

# contactMergeSuggestions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the feature to suggest merging contact items when Outlook detects duplicates in the user's contacts list.
Users have the option to enable or disable the feature in the privacy settings for Outlook. By default, suggestion is enabled. This resource provides a programmatic alternative to enable or disable this feature. Duplicate contact items remain as duplicates in the contact folder unless the user selects merging them.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/contactmergesuggestions-get.md)|[contactMergeSuggestions](contactmergesuggestions.md)|Read the properties of a **contactMergeSuggestions** setting.|
|[Update](../api/contactmergesuggestions-update.md)|NA |Update the properties of a **contactMergeSuggestions** setting.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|`true` if duplicate contact merge suggestions feature is enabled for user; `false` if duplicate contact merge suggestions feature is disabled. Default is `true`.|

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


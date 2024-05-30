---
title: "modifiedProperty resource type"
description: "Indicates all the properties on a Microsoft Entra resource that have been modified, including the old and new values."
ms.localizationpriority: medium
author: "dhanyahk"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# modifiedProperty resource type

Namespace: microsoft.graph

Indicates all the properties on a Microsoft Entra resource that have been modified, including the old and new values.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|Indicates the property name of the target attribute that was changed.|
|newValue|String|Indicates the updated value for the propery.|
|oldValue|String|Indicates the previous value (before the update) for the property.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.modifiedProperty"
}-->

```json
{
  "displayName": "String",
  "newValue": "String",
  "oldValue": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "modifiedProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

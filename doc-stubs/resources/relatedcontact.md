---
title: "relatedContact resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# relatedContact resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessConsent|Boolean|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|emailAddress|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|mobilePhone|String|**TODO: Add Description**|
|relationship|contactRelationship|**TODO: Add Description**. The possible values are: `parent`, `relative`, `aide`, `doctor`, `guardian`, `child`, `other`, `unknownFutureValue`.|
|status|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.relatedContact"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.relatedContact",
  "accessConsent": "Boolean",
  "displayName": "String",
  "emailAddress": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "mobilePhone": "String",
  "relationship": "String",
  "status": "String"
}
```


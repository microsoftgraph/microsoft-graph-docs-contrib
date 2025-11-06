---
title: "agentSkill resource type"
description: "**TODO: Add Description**"
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra"
doc_type: resourcePageType
---

# agentSkill resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|examples|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|inputModes|String collection|**TODO: Add Description**|
|outputModes|String collection|**TODO: Add Description**|
|security|[securityRequirement](../resources/securityrequirement.md) collection|**TODO: Add Description**|
|tags|String collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentSkill"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentSkill",
  "id": "String",
  "displayName": "String",
  "description": "String",
  "tags": [
    "String"
  ],
  "examples": [
    "String"
  ],
  "inputModes": [
    "String"
  ],
  "outputModes": [
    "String"
  ],
  "security": [
    {
      "@odata.type": "microsoft.graph.securityRequirement"
    }
  ]
}
```


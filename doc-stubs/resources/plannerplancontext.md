---
title: "plannerPlanContext resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# plannerPlanContext resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associationType|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayNameSegments|String collection|**TODO: Add Description**|
|isCreationContext|Boolean|**TODO: Add Description**|
|ownerAppId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerPlanContext"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlanContext",
  "associationType": "String",
  "createdDateTime": "String (timestamp)",
  "displayNameSegments": [
    "String"
  ],
  "ownerAppId": "String",
  "isCreationContext": "Boolean"
}
```


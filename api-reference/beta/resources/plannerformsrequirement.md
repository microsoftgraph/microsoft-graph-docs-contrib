---
title: "plannerFormsRequirement resource type"
description: "Represents the criteria of form requirements that must be met to complete a Planner task."
author: "cpanga22"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerFormsRequirement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a form completion requirement on a [plannerTask](plannertask.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|requiredForms|String collection|Read-only. A collection of required [plannerFormsDictionary](plannerformsdictionary.md) identifiers to complete the [plannerTask](plannertask.md).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerFormsRequirement"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerFormsRequirement",
  "requiredForms": ["String"]
}
```

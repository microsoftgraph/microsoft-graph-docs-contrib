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
|requiredForms|String collection|Read-only. A collection of keys from the [plannerFormsDictionary](plannerformsdictionary.md) that identify the [plannerFormReference](plannerformreference.md) objects that specify the requirements to complete the [plannerTask](plannertask.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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

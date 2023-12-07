---
title: "plannerFormReference resource type"
description: "The **plannerFormReference** resource represents an item in the forms of a task. The forms on a task is represented by the plannerFormsDictionary object."
ms.localizationpriority: medium
author: "cpanga22"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerFormReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerFormReference** resource represents an item in the forms of a task. The forms on a task is represented by the [forms object](plannerFormsDictionary.md).

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|displayName|String|Display Name of the form|
|formWebUrl|String|Reference of the form|
|formResponse|String|Identifier of the response|

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerFormReference"
}-->

```json
{
    "displayName": "String-value",
    "formWebUrl": "String-value",
    "formResponse": "String-value"
}

```

---
title: "plannerFormReference resource type"
description: "The **plannerFormReference** resource represents an item in the forms of a task. The forms on a task are represented by the plannerFormsDictionary object."
ms.localizationpriority: medium
author: "cpanga22"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerFormReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerFormReference** resource represents an item in the forms of a task. The forms on a task are represented by the [forms object](plannerFormsDictionary.md).

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|displayName|String|Display Name of the form|
|formWebUrl|String|URL of the user experience represented by the associated plannerFormReference.|
|formResponse|String|Identifier of the response|

## JSON representation
Here's a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerFormReference"
}-->

```json
{
    "displayName": "String-value",
    "formWebUrl": "String-value",
    "formResponse": "String-value"
}

```

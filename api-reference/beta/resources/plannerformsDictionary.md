---
title: "plannerFormsDictionary resource type"
description: "Represents a dictionary of planner form reference objects for a task."
ms.localizationpriority: medium
author: "cpanga22"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerFormsDictionary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An open type that represents a dictionary of data about the forms associated with a task. This resource is a part of the [task details](plannertaskdetails.md) object. Each entry in the dictionary is a key-value pair, where the value is a [plannerFormReference](plannerformreference.md) object


## Properties
You can add and remove values from open type properties. Provide GUID values as keys, and [plannerFormReference](plannerformreference.md) objects as values. Example is shown below. To remove an item in the forms, set the value of the property to `null`.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerFormsDictionary"
}-->

```json
{
  "String-value":
  {
    "displayName": "String-value",
    "formWebUrl": "String-value",
    "formResponse": "String-value"
  }
}

```
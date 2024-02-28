---
title: "plannerFormsDictionary resource type"
description: "The **plannerFormsDictionary** resource represents the collection of forms on a task. It's an Open Type. It's part of the task details object. The value in the property-value pair is the plannerFormReference object."
ms.localizationpriority: medium
author: "cpanga22"
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerFormsDictionary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerFormsDictionary** resource represents the collection of forms on a task. It's an Open Type. It's part of the [task details](plannertaskdetails.md) object. The value in the property-value pair is the [plannerFormReference](plannerformreference.md) object.


## Properties
Properties of an Open Type can be defined by the client. In this case, the client should provide **GUIDs** as properties and their values must be [form](plannerformreference.md) objects. Example is shown below. To remove an item in the forms, set the value of the property to `null`.

## JSON representation

Here's a JSON representation of the resource

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
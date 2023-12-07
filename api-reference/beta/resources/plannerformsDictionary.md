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
  "optionalProperties": [

  ],
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

// Example

```json
{
  "3a73c9dd-fb47-4230-9c0f-b80788fb0f9b": // client-generated GUID
  {
    "@odata.type": "microsoft.graph.plannerFormReference", // required in PATCH requests to edit the forms on a task
      "formWebUrl": "https://forms.office.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbRws6FwN-GIdAkfx5ozJnYvlUN0VYSVJHUktPSlc4UUg1VTdGU0cwUUU2RyQlQCN0PWcu",
      "displayName": "Work Survey",
      "formResponse": "1"
  },
  "5f36f5b2-1ec0-4c48-9c75-ed59429516c5":
  {
     "@odata.type": "microsoft.graph.plannerFormReference",
      "formWebUrl": "https://forms.office.com/Pages/ResponsePage.aspx?id=v4j5cvGGr0GRqy180BHbRws6FwN-GIdAkfx5ozJnYvlUN0VYSVJHUktPSlc4UUg1VTdGU0cwUUU2RyQlQCN0PWcu",
      "displayName": "Work Survey",
      "formResponse": "1"
  }
}

```
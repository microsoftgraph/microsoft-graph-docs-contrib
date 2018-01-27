# plannerPlanContextCollection resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.


The **plannerPlanContextCollection** resource represents the collection of external contexts to which a plan is linked. It is an Open Type. 
It is part of the [plannerPlan](plannerPlan.md) object. The value in the property-value pair is the [plannerPlanContext](plannerPlanContext.md) object.


## Properties
Properties of an Open Type can be defined by the client. In this case, the client should use a distinctive identifier that represents the external context as the property name. 
The property values must be [plannerPlanContext](plannerPlanContext.md) objects. Based on OData, property names in Open Types cannot contain the following characters: `.`, `:`, `%` so they need to be encoded. To remove an item in the favorites list, set the value of the property to `null`.
An example json structure is available in [plannerPlan](plannerplan.md) topic.


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerPlanContextCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
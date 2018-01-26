# plannerPlanContextDetailsCollection resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.


The **plannerPlanContextDetailsCollection** resource represents the collection of external contexts to which a plan is linked. It is an Open Type. 
It is part of the [plannerPlanDetails](plannerPlanDetails.md) object. The value in the property-value pair is the [plannerPlanContextDetails](plannerPlanContextDetails.md) object.


## Properties
Properties of an Open Type can be defined by the client. In this case, the client should use a distinctive identifier that represents the external context as the property name. 
The property values must be [plannerPlanContextDetails](plannerFPlannerPlanContextDetails.md) objects. Based on OData, property names in Open Types cannot contain the following characters: `.`, `:`, `%` so they need to be encoded. Example is shown below. 
To remove an item in the favorites list, the value needs to be removed from [plannerPlanContextCollection](plannerPlanContextCollection.md) collection instead, which will automatically remove the entry in this object.


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerPlanContextDetailsCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
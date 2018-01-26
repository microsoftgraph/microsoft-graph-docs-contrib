# plannerRecentPlanReferenceCollection resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **plannerRecentPlanReferenceCollection** resource represents the collection of references to plans that recently viewed by a user. It is an Open Type. 
It is part of the [plannerUser](plannerUser.md) object. The value in the property-value pair is the [plannerRecentPlanReference](plannerRecentPlanReference.md) object, while the property name is the id of the corresponding plan.
Adding new references to this collection will automatically remove oldest entries when the size of the collection exceeds a predetermined maximum value.


## Properties
Properties of an Open Type can be defined by the client. In this case, the client should provide id values of [plannerPlan](plannerPlan.md) resources as properties and their values must be [plannerRecentPlanReference](plannerRecentPlanReference.md) objects. Example is shown below. To remove an item in the favorites list, set the value of the property to `null`.


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerRecentPlanReferenceCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
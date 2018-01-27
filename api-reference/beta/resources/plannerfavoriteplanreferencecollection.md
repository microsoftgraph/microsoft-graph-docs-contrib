# plannerFavoritePlanReferenceCollection resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **plannerFavoritePlanReferenceCollection** resource represents the collection of references to plans that are marked as favorite by a user. It is an Open Type. 
It is part of the [plannerUser](plannerUser.md) object. The value in the property-value pair is the [plannerFavoritePlanReference](plannerFavoritePlanReference.md) object, while the property name is the id of the corresponding plan.


## Properties
Properties of an Open Type can be defined by the client. In this case, the client should provide id values of [plannerPlan](plannerPlan.md) resources as properties and their values must be [plannerFavoritePlanReference](plannerFavoritePlanReference.md) objects. Example is shown below. To remove an item in the favorites list, set the value of the property to `null`.
An example json structure is available in [plannerUser](planneruser.md) topic.


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerFavoritePlanReferenceCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
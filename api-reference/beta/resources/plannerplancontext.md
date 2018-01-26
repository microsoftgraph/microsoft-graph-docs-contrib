# plannerPlanContext resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **plannerPlanContext** resource represents the relationship of a [plannerPlan](plannerPlan.md) to a user experience outside of Microsoft Planner. Plans in Microsoft Planner can be surfaced in other experiences to track work in the context of this experience, such as Microsoft Teams.
The experience the **plannerPlanContext** entry reresents can be identified based on the **ownerAppId** property:
 - 5e3ce6c0-2b1f-4285-8d4b-75ee78787346 : The context entry belongs to Microsoft Teams.
 - 00000003-0000-0ff1-ce00-000000000000 : The context entry belongs to Microsoft SharePoint.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|associationType|String|Nullable. App defined type of association between the [plannerPlan](plannerPlan.md) and the app. The app can use this information to track different kinds of relationships to the same [plannerPlan](plannerPlan.md)|
|createdDateTime|DateTimeOffset|Read-only. The date and time when the **plannerPlanContext** was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|displayNameSegments|String collection|The segments of the name of the external experience. Segments represent a hierarchical structure that allows other apps to display the relationship.|
|ownerAppId|String|Read-only. Id of the app that created the **plannerPlanContext**.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerPlanContext"
}-->

```json
{
  "associationType": "String",
  "createdDateTime": "String (timestamp)",
  "displayNameSegments": ["String"],
  "ownerAppId": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerPlanContext resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
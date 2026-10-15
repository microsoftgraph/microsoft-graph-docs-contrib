---
title: "planContextLink resource type"
description: "A back-reference to where a plan is surfaced outside Planner (for example, a Teams channel tab, a Loop page, or an Outlook calendar). `webUrl`, `displayAs`, and `isActive` are returned by default."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# planContextLink resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A back-reference to where a [plan](plan.md) is surfaced outside Planner (for example, a Teams channel tab, a Loop page, or an Outlook calendar). `webUrl`, `displayAs`, and `isActive` are returned by default.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/plan-list-contexts.md)|[planContextLink](../resources/plancontextlink.md) collection|Get a list of the planContextLink objects and their properties.|
|[Create](../api/plan-post-contexts.md)|[planContextLink](../resources/plancontextlink.md)|Create a new planContextLink object.|
|[Get](../api/plancontextlink-get.md)|[planContextLink](../resources/plancontextlink.md)|Read the properties and relationships of [planContextLink](../resources/plancontextlink.md) object.|
|[Update](../api/plancontextlink-update.md)|[planContextLink](../resources/plancontextlink.md)|Update the properties of a planContextLink object.|
|[Delete](../api/plan-delete-contexts.md)|None|Delete a planContextLink object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associationType|String|Describes how the plan is associated with the surface.|
|createdDateTime|DateTimeOffset|Date and time the context link was created. Read-only.|
|customLinkText|String|Custom text used to render the link, if provided.|
|displayAs|plannerPlanContextType|How the context link should be displayed. The possible values are: `teamsTab`, `sharePointPage`, `meetingNotes`, `other`, `unknownFutureValue`, `loopPage`, `project`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `loopPage` , `project`.|
|displayNameSegments|String collection|Display name segments used to render where the plan is surfaced.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|isActive|Boolean|Indicates whether the context link is currently active.|
|isCreation|Boolean|Indicates whether this context link represents the original creation surface for the plan.|
|key|String|Identifier for the context the plan is surfaced in.|
|ownerAppId|String|Application ID of the app that owns the surface the plan is linked from.|
|webUrl|String|URL of the surface where the plan is displayed.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.planContextLink",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.planContextLink",
  "id": "String (identifier)",
  "key": "String",
  "displayNameSegments": [
    "String"
  ],
  "webUrl": "String",
  "associationType": "String",
  "displayAs": "String",
  "isActive": "Boolean",
  "customLinkText": "String",
  "ownerAppId": "String",
  "isCreation": "Boolean",
  "createdDateTime": "String (timestamp)"
}
```


# plannerUser resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **plannerUser** resource provides access to Planner resources for a [user](user.md). 


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List tasks](../api/planneruser_list_tasks.md) |[plannerTask](plannertask.md) collection| Get the [plannerTasks](plannertask.md) assigned to the user.|
|[List favoritePlans](../api/planneruser_list_favoriteplans.md) |[plannerPlan](plannerplan.md) collection| Get the [plannerPlans](plannerplan.md) marked as favorite by the user.|
|[List recentPlans](../api/planneruser_list_recentplans.md) |[plannerPlan](plannerplan.md) collection| Get the [plannerPlans](plannerplan.md) recently viewed by the user.|
|[Update](../api/planneruser_update.md) | [plannerUser](planneruser.md)| Update a **plannerUser** object. |


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Identifier of the plannerUser|
|favoritePlanReferences|[plannerFavoritePlanReferenceCollection](plannerfavoriteplanreferencecollection.md)| A collection containing the references to the plans that the user has marked as a favorite.|
|recentPlanReferences|[plannerRecentPlanReferenceCollection](plannerrecentplanreferencecollection.md)| A collection containing references to the plans that were viewed recently by the user in apps that support recent plans.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. Returns the [plannerTasks](plannertask.md) assigned to the user.|
|favoritePlans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable. Returns the [plannerPlans](plannerplan.md) that the user marked as favorite.|
|recentPlans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable. Returns the [plannerPlans](plannerplan.md) that have been recently viewed by the user in apps that support recent plans. |

## JSON representation
The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerUser"
}-->

```json
{
  "favoritePlanReferences": {
    "@odata.type": "microsoft.graph.plannerFavoritePlanReferenceCollection",
    "jd8S5gOaFk2S8aWCIAJz42QAAxtD": {
      "@odata.type": "#microsoft.graph.plannerFavoritePlanReference",
      "orderHint": "8586866870001551087",
      "planTitle": "Customer reviews"
    },
    "uZWtCtli30CGoWLIWSat1mQAC0ai": {
      "@odata.type": "#microsoft.graph.plannerFavoritePlanReference",
      "orderHint": "8586848705198093378",
      "planTitle": "Order Management (December 2017)"
    }
  },
  "id": "-YPnMJRiIUSKFyaVjYEkBWQAAc47",
  "recentPlanReferences": {
    "@odata.type": "microsoft.graph.plannerRecentPlanReferenceCollection",
    "7oTB5aMIAE2rVo-1N-L7RmQAGX2q": {
      "@odata.type": "#microsoft.graph.plannerRecentPlanReference",
      "lastAccessedDateTime": "2017-12-02T22:49:46.155Z",
      "planTitle": "Purchase Workflow"
    },
    "iKNMHkk3vEWpSF7F7iZWIGQAAMMw": {
      "@odata.type": "#microsoft.graph.plannerRecentPlanReference",
      "lastAccessedDateTime": "2017-12-03T21:59:28.975Z",
      "planTitle": "New Year's Office Party"
    },
    "jd8S5gOaFk2S8aWCIAJz42QAAxtD": {
      "@odata.type": "#microsoft.graph.plannerRecentPlanReference",
      "lastAccessedDateTime": "2017-12-20T02:28:09.621Z",
      "planTitle": "Customer reviews"
    }
  }
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

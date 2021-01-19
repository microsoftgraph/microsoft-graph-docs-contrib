---
title: "Add plannerPlan"
description: "Add plans by posting to the plans collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Add plannerPlan
Namespace: microsoft.graph

Add plans by posting to the plans collection.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /planner/rosters/{plannerRosterId}/plans/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [plannerPlan](../resources/plannerplan.md) object.

The following table shows the properties that are required when you create the [plannerPlan](../resources/plannerplan.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|owner|String|**TODO: Add Description**|
|title|String|**TODO: Add Description**|
|contexts|[plannerPlanContextCollection](../resources/plannerplancontextcollection.md)|**TODO: Add Description**|
|container|[plannerPlanContainer](../resources/plannerplancontainer.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `204 No Content` response code and a [plannerPlan](../resources/plannerplan.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_plannerplan_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/planner/rosters/{plannerRosterId}/plans/$ref
Content-Type: application/json
Content-length: 344

{
  "@odata.type": "#microsoft.graph.plannerPlan",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "owner": "String",
  "title": "String",
  "contexts": {
    "@odata.type": "microsoft.graph.plannerPlanContextCollection"
  },
  "container": {
    "@odata.type": "microsoft.graph.plannerPlanContainer"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerPlan"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerPlan",
  "id": "c6442b38-2b38-c644-382b-44c6382b44c6",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "owner": "String",
  "title": "String",
  "contexts": {
    "@odata.type": "microsoft.graph.plannerPlanContextCollection"
  },
  "container": {
    "@odata.type": "microsoft.graph.plannerPlanContainer"
  }
}
```


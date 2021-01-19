---
title: "Update plannerUser"
description: "Update the properties of a plannerUser object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update plannerUser
Namespace: microsoft.graph

Update the properties of a [plannerUser](../resources/planneruser.md) object.

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
PATCH /me/planner
PATCH /users/{usersId}/planner
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [plannerUser](../resources/planneruser.md) object.

The following table shows the properties that are required when you update the [plannerUser](../resources/planneruser.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|favoritePlanReferences|[plannerFavoritePlanReferenceCollection](../resources/plannerfavoriteplanreferencecollection.md)|**TODO: Add Description**|
|recentPlanReferences|[plannerRecentPlanReferenceCollection](../resources/plannerrecentplanreferencecollection.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [plannerUser](../resources/planneruser.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_planneruser"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/planner
Content-Type: application/json
Content-length: 277

{
  "@odata.type": "#microsoft.graph.plannerUser",
  "favoritePlanReferences": {
    "@odata.type": "microsoft.graph.plannerFavoritePlanReferenceCollection"
  },
  "recentPlanReferences": {
    "@odata.type": "microsoft.graph.plannerRecentPlanReferenceCollection"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerUser",
  "id": "7a6475c3-75c3-7a64-c375-647ac375647a",
  "favoritePlanReferences": {
    "@odata.type": "microsoft.graph.plannerFavoritePlanReferenceCollection"
  },
  "recentPlanReferences": {
    "@odata.type": "microsoft.graph.plannerRecentPlanReferenceCollection"
  }
}
```


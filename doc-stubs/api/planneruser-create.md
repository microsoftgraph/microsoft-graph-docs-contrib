---
title: "Create plannerUser"
description: "Create a new plannerUser object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create plannerUser
Namespace: microsoft.graph

Create a new [plannerUser](../resources/planneruser.md) object.

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
POST ** Collection URI for microsoft.graph.plannerUser not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [plannerUser](../resources/planneruser.md) object.

The following table shows the properties that are required when you create the [plannerUser](../resources/planneruser.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|favoritePlanReferences|[plannerFavoritePlanReferenceCollection](../resources/plannerfavoriteplanreferencecollection.md)|**TODO: Add Description**|
|recentPlanReferences|[plannerRecentPlanReferenceCollection](../resources/plannerrecentplanreferencecollection.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [plannerUser](../resources/planneruser.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_planneruser_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.plannerUser not found
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
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerUser"
}
-->
``` http
HTTP/1.1 201 Created
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


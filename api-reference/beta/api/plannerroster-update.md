---
title: "Update plannerRoster"
description: "Update the properties of a plannerRoster object."
author: "tarkansevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: apiPageType
---

# Update plannerRoster
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [plannerRoster](../resources/plannerroster.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /planner/rosters/{plannerRosterId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [plannerRoster](../resources/plannerroster.md) object.

The following table shows the properties that are required when you update the [plannerRoster](../resources/plannerroster.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [plannerRoster](../resources/plannerroster.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_plannerroster"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/planner/rosters/{plannerRosterId}
Content-Type: application/json
Content-length: 55

{
  "@odata.type": "#microsoft.graph.plannerRoster"
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
  "@odata.type": "#microsoft.graph.plannerRoster",
  "id": "6519868f-868f-6519-8f86-19658f861965"
}
```


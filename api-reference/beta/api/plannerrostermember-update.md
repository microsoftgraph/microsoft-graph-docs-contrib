---
title: "Update plannerRosterMember"
description: "Update the properties of a plannerRosterMember object."
author: "tarkansevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: apiPageType
---

# Update plannerRosterMember
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [plannerRosterMember](../resources/plannerrostermember.md) object.

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
PATCH /planner/rosters/{plannerRosterId}/members/{plannerRosterMemberId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [plannerRosterMember](../resources/plannerrostermember.md) object.

The following table shows the properties that are required when you update the [plannerRosterMember](../resources/plannerrostermember.md).

|Property|Type|Description|
|:---|:---|:---|
|roles|String collection|Roles assigned to the member. Currently there are no supported roles.|


## Response

If successful, this method returns a `200 OK` response code and an updated [plannerRosterMember](../resources/plannerrostermember.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_plannerrostermember"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/planner/rosters/{plannerRosterId}/members/{plannerRosterMemberId}
Content-Type: application/json
Content-length: 143

{
  "@odata.type": "#microsoft.graph.plannerRosterMember",
  "roles": [
  ]
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
  "@odata.type": "#microsoft.graph.plannerRosterMember",
  "id": "670095cd-95cd-6700-cd95-0067cd950067",
  "userId": "String",
  "tenantId": "String",
  "roles": [
  ]
}
```


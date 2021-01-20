---
title: "Create plannerRosterMember"
description: "Create a new plannerRosterMember object."
author: "tarkansevilmis"
localization_priority: Normal
ms.prod: "planner"
doc_type: apiPageType
---

# Create plannerRosterMember
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [plannerRosterMember](../resources/plannerrostermember.md) object.

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
POST /planner/rosters/{plannerRosterId}/members
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [plannerRosterMember](../resources/plannerrostermember.md) object.

The following table shows the properties that are required when you create the [plannerRosterMember](../resources/plannerrostermember.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|userId|String|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|
|roles|String collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [plannerRosterMember](../resources/plannerrostermember.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_plannerrostermember_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/planner/rosters/{plannerRosterId}/members
Content-Type: application/json
Content-length: 143

{
  "@odata.type": "#microsoft.graph.plannerRosterMember",
  "userId": "String",
  "tenantId": "String",
  "roles": [
    "String"
  ]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerRosterMember"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerRosterMember",
  "id": "670095cd-95cd-6700-cd95-0067cd950067",
  "userId": "String",
  "tenantId": "String",
  "roles": [
    "String"
  ]
}
```


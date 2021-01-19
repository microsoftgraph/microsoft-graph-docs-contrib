---
title: "Get plannerRosterMember"
description: "Read the properties and relationships of a plannerRosterMember object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get plannerRosterMember
Namespace: microsoft.graph

Read the properties and relationships of a [plannerRosterMember](../resources/plannerrostermember.md) object.

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
GET /planner/rosters/{plannerRosterId}/members/{plannerRosterMemberId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [plannerRosterMember](../resources/plannerrostermember.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_plannerrostermember"
}
-->
``` http
GET https://graph.microsoft.com/beta/planner/rosters/{plannerRosterId}/members/{plannerRosterMemberId}
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.plannerRosterMember",
    "id": "670095cd-95cd-6700-cd95-0067cd950067",
    "userId": "String",
    "tenantId": "String",
    "roles": [
      "String"
    ]
  }
}
```


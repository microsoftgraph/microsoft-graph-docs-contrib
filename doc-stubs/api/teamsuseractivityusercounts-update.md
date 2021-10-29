---
title: "Update teamsUserActivityUserCounts"
description: "Update the properties of a teamsUserActivityUserCounts object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update teamsUserActivityUserCounts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) object.

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
PATCH /teamsUserActivityUserCounts
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|reportRefreshDate|Date|**TODO: Add Description** Optional.|
|reportDate|Date|**TODO: Add Description** Optional.|
|teamChatMessages|Int64|**TODO: Add Description** Optional.|
|privateChatMessages|Int64|**TODO: Add Description** Optional.|
|calls|Int64|**TODO: Add Description** Optional.|
|meetings|Int64|**TODO: Add Description** Optional.|
|otherActions|Int64|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_teamsuseractivityusercounts"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/teamsUserActivityUserCounts
Content-Type: application/json
Content-length: 305

{
  "@odata.type": "#microsoft.graph.teamsUserActivityUserCounts",
  "reportRefreshDate": "Date",
  "reportDate": "Date",
  "teamChatMessages": "Integer",
  "privateChatMessages": "Integer",
  "calls": "Integer",
  "meetings": "Integer",
  "otherActions": "Integer",
  "reportPeriod": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamsUserActivityUserCounts",
  "id": "bea04987-4987-bea0-8749-a0be8749a0be",
  "reportRefreshDate": "Date",
  "reportDate": "Date",
  "teamChatMessages": "Integer",
  "privateChatMessages": "Integer",
  "calls": "Integer",
  "meetings": "Integer",
  "otherActions": "Integer",
  "reportPeriod": "String"
}
```


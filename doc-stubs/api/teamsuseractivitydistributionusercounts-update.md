---
title: "Update teamsUserActivityDistributionUserCounts"
description: "Update the properties of a teamsUserActivityDistributionUserCounts object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update teamsUserActivityDistributionUserCounts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md) object.

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
PATCH /teamsUserActivityDistributionUserCounts
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
|teamChatMessages|Int64|**TODO: Add Description** Optional.|
|privateChatMessages|Int64|**TODO: Add Description** Optional.|
|calls|Int64|**TODO: Add Description** Optional.|
|meetings|Int64|**TODO: Add Description** Optional.|
|reportPeriod|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_teamsuseractivitydistributionusercounts"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/teamsUserActivityDistributionUserCounts
Content-Type: application/json
Content-length: 262

{
  "@odata.type": "#microsoft.graph.teamsUserActivityDistributionUserCounts",
  "reportRefreshDate": "Date",
  "teamChatMessages": "Integer",
  "privateChatMessages": "Integer",
  "calls": "Integer",
  "meetings": "Integer",
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
  "@odata.type": "#microsoft.graph.teamsUserActivityDistributionUserCounts",
  "id": "ebd3f65e-f65e-ebd3-5ef6-d3eb5ef6d3eb",
  "reportRefreshDate": "Date",
  "teamChatMessages": "Integer",
  "privateChatMessages": "Integer",
  "calls": "Integer",
  "meetings": "Integer",
  "reportPeriod": "String"
}
```


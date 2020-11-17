---
title: "Create teamsTab"
description: "Create a new teamsTab object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create teamsTab
Namespace: microsoft.graph

Create a new [teamsTab](../resources/teamstab.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
POST /teams/{teamsId}/channels/{channelId}/tabs
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamsTab](../resources/teamstab.md) object.

The following table shows the properties that are required when you create the [teamsTab](../resources/teamstab.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|teamsAppId|String|**TODO: Add Description**|
|sortOrderIndex|String|**TODO: Add Description**|
|messageId|String|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description**|
|configuration|[teamsTabConfiguration](../resources/teamstabconfiguration.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [teamsTab](../resources/teamstab.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_teamstab_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamsId}/channels/{channelId}/tabs
Content-Type: application/json
Content-length: 303

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamsTab",
  "name": "String",
  "displayName": "String",
  "teamsAppId": "String",
  "sortOrderIndex": "String",
  "messageId": "String",
  "webUrl": "String",
  "configuration": {
    "@odata.type": "microsoft.graph.teamsTabConfiguration"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.teamsTab"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamsTab",
  "id": "11bdd445-d445-11bd-45d4-bd1145d4bd11",
  "name": "String",
  "displayName": "String",
  "teamsAppId": "String",
  "sortOrderIndex": "String",
  "messageId": "String",
  "webUrl": "String",
  "configuration": {
    "@odata.type": "microsoft.graph.teamsTabConfiguration"
  }
}
```


---
title: "Create userTeamwork"
description: "Create a new userTeamwork object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create userTeamwork
Namespace: microsoft.graph

Create a new [userTeamwork](../resources/userteamwork.md) object.

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
POST ** Collection URI for Microsoft.Teams.GraphSvc.userTeamwork not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [userTeamwork](../resources/userteamwork.md) object.

The following table shows the properties that are required when you create the [userTeamwork](../resources/userteamwork.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [userTeamwork](../resources/userteamwork.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_userteamwork_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.Teams.GraphSvc.userTeamwork not found
Content-Type: application/json
Content-length: 63

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.userTeamwork"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.userTeamwork"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#Microsoft.Teams.GraphSvc.userTeamwork",
  "id": "83dd7efc-7efc-83dd-fc7e-dd83fc7edd83"
}
```


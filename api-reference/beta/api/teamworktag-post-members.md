---
title: "Create teamworkTagMember"
description: "Create a new teamworkTagMember object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create teamworkTagMember
Namespace: microsoft.graph

Create a new teamworkTagMember object.

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
POST /teams/{teamsId}/tags/{teamworkTagId}/members
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamworkTagMember](../resources/teamworktagmember.md) object.

The following table shows the properties that are required when you create the [teamworkTagMember](../resources/teamworktagmember.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|
|userId|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [teamworkTagMember](../resources/teamworktagmember.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_teamworktagmember_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamsId}/tags/{teamworkTagId}/members
Content-Type: application/json
Content-length: 144

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkTagMember",
  "displayName": "String",
  "tenantId": "String",
  "userId": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.teamworkTagMember"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkTagMember",
  "id": "c3da5a05-5a05-c3da-055a-dac3055adac3",
  "displayName": "String",
  "tenantId": "String",
  "userId": "String"
}
```


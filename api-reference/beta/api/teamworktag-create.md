---
title: "Create teamworkTag"
description: "Create a new teamworkTag object."
author: "rasikadhumal"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Create teamworkTag
Namespace: microsoft.graph

Create a new [teamworkTag](../resources/teamworktag.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkTagReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/tags
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamworkTag](../resources/teamworktag.md) object.

The following table shows the properties that are required when you create the [teamworkTag](../resources/teamworktag.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the tag. The value can not be more than 40 characters.|
|description|String|Description of the tag. The value can not be more than 200 characters.|




## Response

If successful, this method returns a `201 Created` response code and a [teamworkTag](../resources/teamworktag.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_teamworktag_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamsId}/tags
Content-Type: application/json

{
  "displayName": "Sample tag name",
  "description": "sample tag name description",
  "members":[
	{
		"userId":"user-aad-id-value"
	}
  ]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.teamworkTag"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkTag",
  "id": "teamworkTag-id-value",
  "teamId": "team-id-value",
  "displayName": "Sample tag name",
  "description": "sample tag name description",
  "memberCount": "Integer",
  "tagType": "String"
}
```


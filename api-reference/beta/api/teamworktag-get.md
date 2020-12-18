---
title: "Get teamworkTag"
description: "Read the properties and relationships of a teamworkTag object."
author: "rasikadhumal"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get teamworkTag
Namespace: microsoft.graph

Get a standard tag in a team. Read the properties and relationships of a [teamworkTag](../resources/teamworktag.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkTagReadWrite, TeamworkTagRead|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{teamsId}/tags/{teamworkTagId}
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

If successful, this method returns a `200 OK` response code and a [teamworkTag](../resources/teamworktag.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_teamworktag"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/53c53217-fe77-4383-bc5a-ed4937a1aecd/tags/MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM3ZDg4M2Q4Yi1hMTc5LTRkZDctOTNiMy1hOGQzZGUxYTIxMmUjI3RhY29VSjN2RGk==
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkTag",
    "id": "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM3ZDg4M2Q4Yi1hMTc5LTRkZDctOTNiMy1hOGQzZGUxYTIxMmUjI3RhY29VSjN2RGk==",
    "teamId": "53c53217-fe77-4383-bc5a-ed4937a1aecd",
    "displayName": "Sample tag name",
    "description": "sample tag name description",
    "memberCount": "2",
    "tagType": "standard"
  }
}
```


---
title: "Create teamworkTagMember"
description: "Create a new teamworkTagMember object in a team."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Create teamworkTagMember
Namespace: microsoft.graph

Create a new [teamworkTagMember](../resources/teamworktagmember.md) object in a team.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkTag.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|TeamworkTag.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{team-id}/tags/{teamworkTag-id}/members
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamworkTagMember](../resources/teamworktagmember.md) object.

The following table shows the properties that are required when you create a [teamworkTagMember](../resources/teamworktagmember.md).

|Property|Type|Description|
|:---|:---|:---|
|userId|String|The unique identifier for the member of the team.|

## Response

If successful, this method returns a `201 Created` response code and a [teamworkTagMember](../resources/teamworktagmember.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_teamworktagmember_from_",
  "sampleKeys": ["53c53217-fe77-4383-bc5a-ed4937a1aecd", "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM3ZDg4M2Q4Yi1hMTc5LTRkZDctOTNiMy1hOGQzZGUxYTIxMmUjI3RhY29VSjN2RGk=="]
}
-->
``` http
POST https://graph.microsoft.com/v1.0/teams/53c53217-fe77-4383-bc5a-ed4937a1aecd/tags/MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyM3ZDg4M2Q4Yi1hMTc5LTRkZDctOTNiMy1hOGQzZGUxYTIxMmUjI3RhY29VSjN2RGk==/members
Content-Type: application/json

{
  "userId": "97f62344-57dc-409c-88ad-c4af14158ff5"
}
```

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkTagMember"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamworkTagMember",
  "id": "MjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyNlYjY1M2Y5Mi04MzczLTRkZTYtYmZlYy01YjRkMjE2YjZhZGUjI2QzYjJiM2ViLWM0N2YtNDViOS05NWYyLWIyZjJlZjYyMTVjZQ==",
  "displayName": "Megan Bowen",
  "tenantId": "18be64a9-c73a-4862-bccc-76c31ef09b9d",
  "userId": "92f6952f-61ca-4a94-8910-508a240bc167"
}
```

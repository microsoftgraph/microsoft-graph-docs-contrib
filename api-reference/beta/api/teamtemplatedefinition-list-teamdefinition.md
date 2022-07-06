---
title: "Get teamDefinition"
description: "Get the properties of the team associated with a teamTemplateDefinition object."
author: "Charlieforce"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: apiPageType
---

# Get teamDefinition
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of the [team](../resources/team.md) associated with a [teamTemplateDefinition](../resources/teamstemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Team.Create|
|Delegated (personal Microsoft account)|Not supported|
|Application|Team.Create|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/teamTemplates/{teamTemplateId}/definitions/{teamTemplateDefinitionId}/teamDefinition
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [team](../resources/team.md) object in the response body.

## Examples

### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_teamtemplate/teamDefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/teamTemplates/com.microsoft.teams.template.ManageAProject/definitions/Y29tLm1pY3Jvc29mdC50ZWFtcy50ZW1wbGF0ZS5NYW5hZ2VBUHJvamVjdCMjUHVibGljIyNlbi1VUw==/teamDefinition
```

### Response
The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.team"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "com.microsoft.teams.template.ManageAProject.Team",
    "createdDateTime": null,
    "displayName": "Manage a Project",
    "description": "Manage tasks, share documents, conduct project meetings and document risks and decisions with this template for general project management.",
    "internalId": null,
    "classification": null,
    "specialization": "none",
    "visibility": "private",
    "webUrl": null,
    "isArchived": null,
    "tenantId": null,
    "isMembershipLimitedToOwners": null,
    "summary": null,
    "memberSettings": {
        "allowCreateUpdateChannels": true,
        "allowCreatePrivateChannels": true,
        "allowDeleteChannels": true,
        "allowAddRemoveApps": true,
        "allowCreateUpdateRemoveTabs": true,
        "allowCreateUpdateRemoveConnectors": true
    },
    "guestSettings": {
        "allowCreateUpdateChannels": false,
        "allowDeleteChannels": false
    },
    "messagingSettings": {
        "allowUserEditMessages": true,
        "allowUserDeleteMessages": true,
        "allowOwnerDeleteMessages": true,
        "allowTeamMentions": true,
        "allowChannelMentions": true
    },
    "funSettings": {
        "allowGiphy": true,
        "giphyContentRating": "moderate",
        "allowStickersAndMemes": true,
        "allowCustomMemes": true
    },
    "discoverySettings": {
        "showInTeamsSearchAndSuggestions": true
    }
}
```

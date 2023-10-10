---
title: "List all teams in Microsoft Teams for an organization"
description: "Use the Microsoft Teams API in Microsoft Graph to list all teams in an organization by finding all groups that have teams and getting information for each team."
author: "nkramer"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# List all teams in Microsoft Teams for an organization

To use the Microsoft Teams API in Microsoft Graph to list all [teams](/graph/api/resources/team) in an organization (tenant), you find all groups that have teams, and then get information for each team.

## Get a list of groups

### Example 1: Get a list of groups that contain a team

To get a list of all [groups](/graph/api/resources/group) in the organization that have teams, get a [list of all groups](/graph/api/group-list), and then in code find the ones that have a **resourceProvisioningOptions** property that contains "Team".

Use the API with `$filter` to return only the groups that have teams.

#### Request

```http
GET /groups?$filter=resourceProvisioningOptions/Any(x:x eq 'Team')
```

> [!NOTE]
> Certain unused old teams will not have **resourceProvisioningOptions** set. For details, see [known issues](https://developer.microsoft.com/en-us/graph/known-issues/?search=13633).

#### Response

The following is an example of the response. 

>**Note:** The response object shown might be shortened for readability. 
>
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups",
    "value": [
        {
            "id": "02bd9fd6-8f93-4758-87c3-1fb73740a315",
            "description": "Welcome to the HR Taskforce team.",
            "displayName": "HR Taskforce",
            "groupTypes": [
                "Unified"
            ],
            "mailEnabled": true,
            "mailNickname": "HRTaskforce",
            "resourceBehaviorOptions": [],
            "resourceProvisioningOptions": [
                "Team"
            ],
            "securityEnabled": false,
            "visibility": "Private"
        },
        {
            "id": "8090c93e-ba7c-433e-9f39-08c7ba07c0b3",
            "description": "Welcome to the team that we've assembled to launch our product.",
            "displayName": "X1050 Launch Team",
            "groupTypes": [
                "Unified"
            ],
            "mailEnabled": true,
            "mailNickname": "X1050LaunchTeam",
            "resourceBehaviorOptions": [],
            "resourceProvisioningOptions": [
                "Team"
            ],
            "securityEnabled": false,
            "visibility": "Private"
        }
    ]
}
```

### Example 2: Get a list of groups by selecting required properties only

Because groups are large objects, use `$select` to only get the properties of the group you care about.

#### Request

```http
GET /groups?$select=id,resourceProvisioningOptions
```

> [!NOTE]
> Certain unused old teams will not have **resourceProvisioningOptions** set. For details, see [known issues](https://developer.microsoft.com/en-us/graph/known-issues/?search=13633).

#### Response

The following is an example of the response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups",
    "value": [
        {
            "id": "00e897b1-70ba-4cb9-9126-fd5f95c4bb78",
            "resourceProvisioningOptions": []
        },
        {
            "id": "00f6e045-f884-4359-a617-d459ee626862",
            "resourceProvisioningOptions": [
                "Team"
            ]
        }
    ]
}

```

## Get team information for a group

To get team information for the team in a particular group, call the [get team](/graph/api/team-get) API and include the group ID.

### Request

```http
GET /teams/{group-id}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.team"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "isArchived" : false,
  "memberSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true,
    "allowAddRemoveApps": true,
    "allowCreateUpdateRemoveTabs": true,
    "allowCreateUpdateRemoveConnectors": true    
  },
  "guestSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true 
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
    "giphyContentRating": "strict",
    "allowStickersAndMemes": true,
    "allowCustomMemes": true
  }
}
```

## See also

- [List joinedTeams](/graph/api/user-list-joinedteams)
- [List groups](/graph/api/group-list)
- [Microsoft Teams API overview](teams-concept-overview.md)
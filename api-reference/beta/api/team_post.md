# Create team

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Create a new [team](../resources/team.md) from scratch.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Group.ReadWrite.All                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Group.ReadWrite.All                         |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams
```

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json          |

## Request body

In the request body, supply a JSON representation of a [team](../resources/team.md) object.

## Response

If successful, this API returns a `202 Accepted` response containing a link to the [teamsAsyncOperation](../resources/teamsasyncoperation.md).

#### Example

Here is an example of a minimal request. By omitting other properties, the client is implicitly taking defaults from the pre-defined template represented by `template`.

##### Request

```http
POST https://graph.microsoft.com/beta/teams
Content-Type: application/json
{
  "template@odata.bind": "https://graph.microsoft.com/teamTemplates/standard",
  "displayName": "My Sample Team",
  "description": "My Sample Team’s Description",
}
```

##### Response

```http
HTTP/1.1 202 Accepted
Content-Type: application/json
Location: /teams/{teamId}/operations/{operationId}
Content-Location: /teams/{teamId}
{
}
```

#### Example - create a team with an app installed, multiple channels with pinned tabs

Here is request with a full payload. The client can override values in the base template and add to array-valued items to the extent allowed by validation rules for the `specialization`.

##### Request

```http
POST https://graph.microsoft.com/beta/teams
Content-Type: application/json
{
  "template@odata.bind": "https://graph.microsoft.com/beta/teamsTemplates('standard')",
  "visibility": "Private",
  "displayName": "My Care Team",
  "description": "My Care Team’s description",
  "channels": [
    {
      "displayName": "Announcements",
      "isFavoriteByDefault": true,
      "tabs": [
        {
          "teamsApp@odata.bind": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('0d820ecd-def2-4297-adad-78056cde7c78')",
          "name": "Intranet"
        },
        {
          "teamsApp@odata.bind": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.youtube')",
          "name": "A Pinned YouTube video",
          "configuration": {
              "contentUrl": "https://tabs.teams.microsoft.com/Youtube/Home/YoutubeTab?videoId=j44iyHIu3nU",
              "websiteUrl": "https://www.youtube.com/watch?v=lR2tJxRqYKc"
          }
        }
      ]
    },
    {
      "displayName": "Diabetes",
      "isFavoriteByDefault": true
    },
    {
      "displayName": "Cardiovascular",
      "isFavoriteByDefault": true
    },
    {
      "displayName": "Registered Nurses",
      "isFavoriteByDefault": true
    }
  ],
  "memberSettings": {
    "allowCreateUpdateChannels": true,
    "allowDeleteChannels": true,
    "allowAddRemoveApps": true,
    "allowCreateUpdateRemoveTabs": true,
    "allowCreateUpdateRemoveConnectors": true
  },
  "guestSettings": {
    "allowCreateUpdateChannels": false,
    "allowDeleteChannels": false
  },
  "funSettings": {
    "allowGiphy": true,
    "giphyContentRating": "Moderate",
    "allowStickersAndMemes": true,
    "allowCustomMemes": true
  },
  "messagingSettings": {
    "allowUserEditMessages": true,
    "allowUserDeleteMessages": true,
    "allowOwnerDeleteMessages": true,
    "allowTeamMentions": true,
    "allowChannelMentions": true
  },
  "installedApps": [
    {
      "teamsApp@odata.bind": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('1542629c-01b3-4a6d-8f76-1938b779e48d')"
    }
  ]
}
```

##### Response

```http
HTTP/1.1 202 Accepted
Content-Type: application/json
Location: /teams/{teamId}/operations/{operationId}
Content-Location: /teams/{teamId}
{
}
```

## See also

- [Creating a group with a team](../../../concepts/teams-create-group-and-team.md)

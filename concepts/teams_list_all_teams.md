# List all teams in organization

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

To list all [teams](../api-reference/beta/resources/team.md) in an organization (tenant), 
get a list of all [groups](../api-reference/beta/resources/group.md) in the organization that have corresponding teams. 
Any group that has a team has a resourceProvisioningOptions property that contains "Team", 
so the approach is to get a [list of all groups](../api-reference/beta/api/group_list.md) where resourceProvisioningOptions contains "Team".

Note: The Group.resourceProvisioningOptions can be changed.
Do not add or remove "Team" from that collection, 
otherwise list all teams will return incorrect results.

> **Note**: There is a known issue with certain unused old teams not being listed with this approach. For details, see the [known issues list](../concepts/known_issues.md#missing-teams-in-list-all-teams).

## Example

#### Request

The following is an example of the request.

```http
GET /groups?$filter=resourceProvisioningOptions/Any(x:x eq 'Team')
```

#### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. The [default properties](../api-reference/beta/api/group_get.md#default-properties) will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: xxx

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups",
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
            "visibility": "Private",
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
            "visibility": "Private",
        }
    ]
}
```

## See also
- [List joinedTeams](../api-reference/beta/api/user_list_joinedteams.md)
- [List groups](../api-reference/beta/api/group_list.md)

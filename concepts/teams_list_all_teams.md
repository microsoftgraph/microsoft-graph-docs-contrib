# List all teams in Microsoft Teams for an organization (preview)

To list all [teams](../api-reference/beta/resources/team.md) in Microsoft Teams for organization (tenant), 
get a list of all [groups](../api-reference/beta/resources/group.md) in the organization that have corresponding teams. 
Any group that has a team has a **resourceProvisioningOptions** property that contains "Team". The approach is to get a [list of all groups](../api-reference/beta/api/group_list.md) where **resourceProvisioningOptions** contains "Team".

>**Note:** The **Group.resourceProvisioningOptions** property can be changed.
Do not add or remove "Team" from that collection;  
otherwise, you'll get incorrect results when you list all teams.

> **Note**: Certain unused old teams aren't listed with this approach. For details, see [known issues](../concepts/known_issues.md#missing-teams-in-list-all-teams).

## List all teams example

The following example shows how to request a list of all teams.

```http
GET /groups?$filter=resourceProvisioningOptions/Any(x:x eq 'Team')
```

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability. The [default properties](../api-reference/beta/api/group_get.md) will be returned from an actual call.

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

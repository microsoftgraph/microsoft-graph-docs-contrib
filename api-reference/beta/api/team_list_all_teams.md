# List all teams

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieves all [groups](../resources/group.md) in the organization (tenant) that have corresponding [teams](../resources/team.md). 
Any group that has a team has a resourceProvisioningOptions property that contains "Team", 
so the approach is to get a [list of all groups](group_list.md) where resourceProvisioningOptions contains "Team".

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /groups?$filter=resourceProvisioningOptions/Any(x:x eq 'Team')
```

See [list of all groups](group_list.md) for information on permissions and responses.

## See also
- [List joinedTeams](user_list_joinedteams.md)
- [List groups](group_list.md)

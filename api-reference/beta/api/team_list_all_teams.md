# List all teams

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieves all [groups](../resources/group.md) in the organization (tenant) that have corresponding [teams](../resources/team.md). 
Any group that has a team has a resourceProvisioningOptions property that contains "Team", 
so the approach is to get a [list of all groups](group_list.md) where resourceProvisioningOptions contains "Team".

See [list of all groups](group_list.md) for information on permissions and responses.

Note: Teams that were deleted then restored may not be included, Microsoft is working to address this limitation.

## Example
#### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_groups"
}-->
```http
GET /groups?$filter=resourceProvisioningOptions/Any(x:x eq 'Team')
```

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. The [default properties](../api/group_get.md#default-properties) will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: xxx

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups",
    "value": [
        {
            "id": "02bd9fd6-8f93-4758-87c3-1fb73740a315",
            "deletedDateTime": null,
            "classification": null,
            "createdDateTime": "2017-07-31T18:56:16Z",
            "description": "Welcome to the HR Taskforce team.",
            "displayName": "HR Taskforce",
            "groupTypes": [
                "Unified"
            ],
            "mail": "HRTaskforce@M365x214355.onmicrosoft.com",
            "mailEnabled": true,
            "mailNickname": "HRTaskforce",
            "membershipRule": null,
            "membershipRuleProcessingState": null,
            "onPremisesLastSyncDateTime": null,
            "onPremisesSecurityIdentifier": null,
            "onPremisesSyncEnabled": null,
            "preferredDataLocation": null,
            "preferredLanguage": null,
            "proxyAddresses": [
                "SMTP:HRTaskforce@M365x214355.onmicrosoft.com"
            ],
            "renewedDateTime": "2017-07-31T18:56:16Z",
            "resourceBehaviorOptions": [],
            "resourceProvisioningOptions": [
                "Team"
            ],
            "securityEnabled": false,
            "theme": null,
            "visibility": "Private",
            "onPremisesProvisioningErrors": []
        },
        ... second group ...,
        ... third group ...
    ]
}

## See also
- [List joinedTeams](user_list_joinedteams.md)
- [List groups](group_list.md)

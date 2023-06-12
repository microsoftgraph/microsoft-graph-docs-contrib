---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TeamsAppInstallation()
consented_permission_set = TeamsAppPermissionSet()
resource_specific_permissions_teams_app_resource_specific_permission1 = TeamsAppResourceSpecificPermission()
resource_specific_permissions_teams_app_resource_specific_permission1.permission_value = 'OnlineMeeting.ReadBasic.Chat'

resource_specific_permissions_teams_app_resource_specific_permission1.permissiontype(TeamsAppResourceSpecificPermissionType.Delegated('teamsappresourcespecificpermissiontype.delegated'))


resourceSpecificPermissionsArray []= resourceSpecificPermissionsTeamsAppResourceSpecificPermission1;
resource_specific_permissions_teams_app_resource_specific_permission2 = TeamsAppResourceSpecificPermission()
resource_specific_permissions_teams_app_resource_specific_permission2.permission_value = 'ChatMessage.Read.Chat'

resource_specific_permissions_teams_app_resource_specific_permission2.permissiontype(TeamsAppResourceSpecificPermissionType.Application('teamsappresourcespecificpermissiontype.application'))


resourceSpecificPermissionsArray []= resourceSpecificPermissionsTeamsAppResourceSpecificPermission2;
consented_permission_set.resourcespecificpermissions(resourceSpecificPermissionsArray)



request_body.consented_permission_set = consented_permission_set
additional_data = [
'teams_app@odata_bind' => 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/7023576d-9e40-47ca-9cf2-daae6838e785', 
];
request_body.additional_data(additional_data)





result = await client.teams.by_team_id('team-id').installed_apps.post(request_body = request_body)


```
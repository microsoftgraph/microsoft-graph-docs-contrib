---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpgradePostRequestBody()
consented_permission_set = TeamsAppPermissionSet()
resource_specific_permissions_teams_app_resource_specific_permission1 = TeamsAppResourceSpecificPermission()
resource_specific_permissions_teams_app_resource_specific_permission1.permission_value = 'Channel.Create.Group'

resource_specific_permissions_teams_app_resource_specific_permission1.permissiontype(TeamsAppResourceSpecificPermissionType.Application('teamsappresourcespecificpermissiontype.application'))


resourceSpecificPermissionsArray []= resourceSpecificPermissionsTeamsAppResourceSpecificPermission1;
resource_specific_permissions_teams_app_resource_specific_permission2 = TeamsAppResourceSpecificPermission()
resource_specific_permissions_teams_app_resource_specific_permission2.permission_value = 'ChannelMeeting.ReadBasic.Group'

resource_specific_permissions_teams_app_resource_specific_permission2.permissiontype(TeamsAppResourceSpecificPermissionType.Delegated('teamsappresourcespecificpermissiontype.delegated'))


resourceSpecificPermissionsArray []= resourceSpecificPermissionsTeamsAppResourceSpecificPermission2;
consented_permission_set.resourcespecificpermissions(resourceSpecificPermissionsArray)



request_body.consented_permission_set = consented_permission_set



await client.teams.by_team_id('team-id').installed_apps.by_installed_app_id('teamsAppInstallation-id').upgrade.post(request_body = request_body)


```
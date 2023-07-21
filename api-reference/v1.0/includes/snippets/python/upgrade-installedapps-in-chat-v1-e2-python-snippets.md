---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpgradePostRequestBody()
consented_permission_set = TeamsAppPermissionSet()
resource_specific_permissions_teams_app_resource_specific_permission1 = TeamsAppResourceSpecificPermission()
resource_specific_permissions_teams_app_resource_specific_permission1.permission_value = 'OnlineMeeting.ReadBasic.Chat'

resource_specific_permissions_teams_app_resource_specific_permission1.permissiontype(TeamsAppResourceSpecificPermissionType.Delegated('teamsappresourcespecificpermissiontype.delegated'))


resourceSpecificPermissionsArray []= resourceSpecificPermissionsTeamsAppResourceSpecificPermission1;
resource_specific_permissions_teams_app_resource_specific_permission2 = TeamsAppResourceSpecificPermission()
resource_specific_permissions_teams_app_resource_specific_permission2.permission_value = 'ChatMember.Read.Chat'

resource_specific_permissions_teams_app_resource_specific_permission2.permissiontype(TeamsAppResourceSpecificPermissionType.Application('teamsappresourcespecificpermissiontype.application'))


resourceSpecificPermissionsArray []= resourceSpecificPermissionsTeamsAppResourceSpecificPermission2;
consented_permission_set.resourcespecificpermissions(resourceSpecificPermissionsArray)



request_body.consented_permission_set = consented_permission_set



await client.chats.by_chat_id('chat-id').installed_apps.by_installed_app_id('teamsAppInstallation-id').upgrade.post(request_body = request_body)


```
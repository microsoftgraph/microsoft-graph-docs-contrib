---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Team()
channels_channel1 = Channel()
channels_channel1.display_name = 'Class Announcements 📢'

channels_channel1.is_favorite_by_default = True


channelsArray []= channelsChannel1;
channels_channel2 = Channel()
channels_channel2.display_name = 'Homework 🏋️'

channels_channel2.is_favorite_by_default = True


channelsArray []= channelsChannel2;
request_body.channels(channelsArray)


member_settings = TeamMemberSettings()
member_settings.allow_create_update_channels = False

member_settings.allow_delete_channels = False

member_settings.allow_add_remove_apps = False

member_settings.allow_create_update_remove_tabs = False

member_settings.allow_create_update_remove_connectors = False


request_body.member_settings = member_settings
installed_apps_teams_app_installation1 = TeamsAppInstallation()
additional_data = [
'teams_app@odata_bind' => 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps(\'com.microsoft.teamspace.tab.vsts\')', 
];
installed_apps_teams_app_installation1.additional_data(additional_data)



installedAppsArray []= installedAppsTeamsAppInstallation1;
installed_apps_teams_app_installation2 = TeamsAppInstallation()
additional_data = [
'teams_app@odata_bind' => 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps(\'1542629c-01b3-4a6d-8f76-1938b779e48d\')', 
];
installed_apps_teams_app_installation2.additional_data(additional_data)



installedAppsArray []= installedAppsTeamsAppInstallation2;
request_body.installedapps(installedAppsArray)


additional_data = [
'template@odata_bind' => 'https://graph.microsoft.com/beta/teamsTemplates(\'standard\')', 
'group@odata_bind' => 'https://graph.microsoft.com/beta/groups(\'dbd8de4f-5d47-48da-87f1-594bed003375\')', 
];
request_body.additional_data(additional_data)





result = await client.teams.post(request_body = request_body)


```
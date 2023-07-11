---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Team()
request_body.visibility(TeamVisibilityType.Private('teamvisibilitytype.private'))

request_body.display_name = 'Sample Engineering Team'

request_body.description = 'This is a sample engineering team, used to showcase the range of properties supported by this API'

channels_channel1 = Channel()
channels_channel1.display_name = 'Announcements 📢'

channels_channel1.is_favorite_by_default = True

channels_channel1.description = 'This is a sample announcements channel that is favorited by default. Use this channel to make important team, product, and service announcements.'


channelsArray []= channelsChannel1;
channels_channel2 = Channel()
channels_channel2.display_name = 'Training 🏋️'

channels_channel2.is_favorite_by_default = True

channels_channel2.description = 'This is a sample training channel, that is favorited by default, and contains an example of pinned website and YouTube tabs.'

tabs_teams_tab1 = TeamsTab()
tabs_teams_tab1.display_name = 'A Pinned Website'

tabs_teams_tab1configuration = TeamsTabConfiguration()
tabs_teams_tab1configuration.content_url = 'https://learn.microsoft.com/microsoftteams/microsoft-teams'


tabs_teams_tab1.configuration = tabs_teams_tab1configuration
additional_data = [
'teams_app@odata_bind' => 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps(\'com.microsoft.teamspace.tab.web\')', 
];
tabs_teams_tab1.additional_data(additional_data)



tabsArray []= tabsTeamsTab1;
tabs_teams_tab2 = TeamsTab()
tabs_teams_tab2.display_name = 'A Pinned YouTube Video'

tabs_teams_tab2configuration = TeamsTabConfiguration()
tabs_teams_tab2configuration.content_url = 'https://tabs.teams.microsoft.com/Youtube/Home/YoutubeTab?videoId=X8krAMdGvCQ'

tabs_teams_tab2configuration.website_url = 'https://www.youtube.com/watch?v=X8krAMdGvCQ'


tabs_teams_tab2.configuration = tabs_teams_tab2configuration
additional_data = [
'teams_app@odata_bind' => 'https://graph.microsoft.com/v1.0/appCatalogs/teamsApps(\'com.microsoft.teamspace.tab.youtube\')', 
];
tabs_teams_tab2.additional_data(additional_data)



tabsArray []= tabsTeamsTab2;
channels_channel2.tabs(tabsArray)



channelsArray []= channelsChannel2;
channels_channel3 = Channel()
channels_channel3.display_name = 'Planning 📅 '

channels_channel3.description = 'This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.'

channels_channel3.is_favorite_by_default = False


channelsArray []= channelsChannel3;
channels_channel4 = Channel()
channels_channel4.display_name = 'Issues and Feedback 🐞'

channels_channel4.description = 'This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.'


channelsArray []= channelsChannel4;
request_body.channels(channelsArray)


member_settings = TeamMemberSettings()
member_settings.allow_create_update_channels = True

member_settings.allow_delete_channels = True

member_settings.allow_add_remove_apps = True

member_settings.allow_create_update_remove_tabs = True

member_settings.allow_create_update_remove_connectors = True


request_body.member_settings = member_settings
guest_settings = TeamGuestSettings()
guest_settings.allow_create_update_channels = False

guest_settings.allow_delete_channels = False


request_body.guest_settings = guest_settings
fun_settings = TeamFunSettings()
fun_settings.allow_giphy = True

fun_settings.giphycontentrating(GiphyRatingType.Moderate('giphyratingtype.moderate'))

fun_settings.allow_stickers_and_memes = True

fun_settings.allow_custom_memes = True


request_body.fun_settings = fun_settings
messaging_settings = TeamMessagingSettings()
messaging_settings.allow_user_edit_messages = True

messaging_settings.allow_user_delete_messages = True

messaging_settings.allow_owner_delete_messages = True

messaging_settings.allow_team_mentions = True

messaging_settings.allow_channel_mentions = True


request_body.messaging_settings = messaging_settings
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
'template@odata_bind' => 'https://graph.microsoft.com/v1.0/teamsTemplates(\'standard\')', 
'discovery_settings' => request_body = DiscoverySettings()
request_body.show_in_teams_search_and_suggestions = True


request_body.discovery_settings = discoverySettings

];
request_body.additional_data(additional_data)





result = await client.teams.post(request_body = request_body)


```
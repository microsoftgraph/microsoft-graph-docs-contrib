---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.team import Team
from msgraph_beta.generated.models.team_visibility_type import TeamVisibilityType
from msgraph_beta.generated.models.channel import Channel
from msgraph_beta.generated.models.teams_tab import TeamsTab
from msgraph_beta.generated.models.teams_tab_configuration import TeamsTabConfiguration
from msgraph_beta.generated.models.team_member_settings import TeamMemberSettings
from msgraph_beta.generated.models.team_guest_settings import TeamGuestSettings
from msgraph_beta.generated.models.team_fun_settings import TeamFunSettings
from msgraph_beta.generated.models.giphy_rating_type import GiphyRatingType
from msgraph_beta.generated.models.team_messaging_settings import TeamMessagingSettings
from msgraph_beta.generated.models.team_discovery_settings import TeamDiscoverySettings
from msgraph_beta.generated.models.teams_app_installation import TeamsAppInstallation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Team(
	visibility = TeamVisibilityType.Private,
	display_name = "Sample Engineering Team",
	description = "This is a sample engineering team, used to showcase the range of properties supported by this API",
	first_channel_name = "My first channel of the sample team",
	channels = [
		Channel(
			display_name = "Announcements 📢",
			is_favorite_by_default = True,
			description = "This is a sample announcements channel that is favorited by default. Use this channel to make important team, product, and service announcements.",
		),
		Channel(
			display_name = "Training 🏋️",
			is_favorite_by_default = True,
			description = "This is a sample training channel, that is favorited by default, and contains an example of pinned website and YouTube tabs.",
			tabs = [
				TeamsTab(
					display_name = "A Pinned Website",
					configuration = TeamsTabConfiguration(
						content_url = "https://learn.microsoft.com/microsoftteams/microsoft-teams",
					),
					additional_data = {
							"teams_app@odata_bind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.web')",
					}
				),
				TeamsTab(
					display_name = "A Pinned YouTube Video",
					configuration = TeamsTabConfiguration(
						content_url = "https://tabs.teams.microsoft.com/Youtube/Home/YoutubeTab?videoId=X8krAMdGvCQ",
						website_url = "https://www.youtube.com/watch?v=X8krAMdGvCQ",
					),
					additional_data = {
							"teams_app@odata_bind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.youtube')",
					}
				),
			],
		),
		Channel(
			display_name = "Planning 📅 ",
			description = "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.",
			is_favorite_by_default = False,
		),
		Channel(
			display_name = "Issues and Feedback 🐞",
			description = "This is a sample of a channel that is not favorited by default, these channels will appear in the more channels overflow menu.",
		),
	],
	member_settings = TeamMemberSettings(
		allow_create_update_channels = True,
		allow_delete_channels = True,
		allow_add_remove_apps = True,
		allow_create_update_remove_tabs = True,
		allow_create_update_remove_connectors = True,
	),
	guest_settings = TeamGuestSettings(
		allow_create_update_channels = False,
		allow_delete_channels = False,
	),
	fun_settings = TeamFunSettings(
		allow_giphy = True,
		giphy_content_rating = GiphyRatingType.Moderate,
		allow_stickers_and_memes = True,
		allow_custom_memes = True,
	),
	messaging_settings = TeamMessagingSettings(
		allow_user_edit_messages = True,
		allow_user_delete_messages = True,
		allow_owner_delete_messages = True,
		allow_team_mentions = True,
		allow_channel_mentions = True,
	),
	discovery_settings = TeamDiscoverySettings(
		show_in_teams_search_and_suggestions = True,
	),
	installed_apps = [
		TeamsAppInstallation(
			additional_data = {
					"teams_app@odata_bind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('com.microsoft.teamspace.tab.vsts')",
			}
		),
		TeamsAppInstallation(
			additional_data = {
					"teams_app@odata_bind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps('1542629c-01b3-4a6d-8f76-1938b779e48d')",
			}
		),
	],
	additional_data = {
			"template@odata_bind" : "https://graph.microsoft.com/beta/teamsTemplates('standard')",
	}
)

result = await graph_client.teams.post(request_body)


```
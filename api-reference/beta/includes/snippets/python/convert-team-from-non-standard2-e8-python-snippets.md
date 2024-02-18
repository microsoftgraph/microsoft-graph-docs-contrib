---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.team import Team
from msgraph.generated.models.channel import Channel
from msgraph.generated.models.team_member_settings import TeamMemberSettings
from msgraph.generated.models.teams_app_installation import TeamsAppInstallation

graph_client = GraphServiceClient(credentials, scopes)

request_body = Team(
	display_name = "My Class Team",
	description = "My Class Team’s Description",
	channels = [
		Channel(
			display_name = "Class Announcements 📢",
			is_favorite_by_default = True,
		),
		Channel(
			display_name = "Homework 🏋️",
			is_favorite_by_default = True,
		),
	],
	member_settings = TeamMemberSettings(
		allow_create_update_channels = False,
		allow_delete_channels = False,
		allow_add_remove_apps = False,
		allow_create_update_remove_tabs = False,
		allow_create_update_remove_connectors = False,
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
			"template@odata_bind" : "https://graph.microsoft.com/beta/teamsTemplates('educationClass')",
	}
)

result = await graph_client.teams.post(request_body)


```
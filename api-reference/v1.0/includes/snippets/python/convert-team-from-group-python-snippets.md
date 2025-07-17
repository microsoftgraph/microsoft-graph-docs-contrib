---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.team import Team
from msgraph.generated.models.channel import Channel
from msgraph.generated.models.team_member_settings import TeamMemberSettings
from msgraph.generated.models.teams_app_installation import TeamsAppInstallation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Team(
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
			"template@odata_bind" : "https://graph.microsoft.com/v1.0/teamsTemplates('standard')",
			"group@odata_bind" : "https://graph.microsoft.com/v1.0/groups('dbd8de4f-5d47-48da-87f1-594bed003375')",
	}
)

result = await graph_client.teams.post(request_body)


```
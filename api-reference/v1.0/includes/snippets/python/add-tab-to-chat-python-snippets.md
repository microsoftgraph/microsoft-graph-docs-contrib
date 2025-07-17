---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.teams_tab import TeamsTab
from msgraph.generated.models.teams_tab_configuration import TeamsTabConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TeamsTab(
	display_name = "My Contoso Tab",
	configuration = TeamsTabConfiguration(
		entity_id = "2DCA2E6C7A10415CAF6B8AB6661B3154",
		content_url = "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/tabView",
		website_url = "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154",
		remove_url = "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/uninstallTab",
	),
	additional_data = {
			"teams_app@odata_bind" : "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8",
	}
)

result = await graph_client.chats.by_chat_id('chat-id').tabs.post(request_body)


```
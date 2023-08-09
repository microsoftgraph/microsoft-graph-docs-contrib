---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TeamsTab()
request_body.display_name = 'My Contoso Tab'

configuration = TeamsTabConfiguration()
configuration.entity_id = '2DCA2E6C7A10415CAF6B8AB6661B3154'

configuration.content_url = 'https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/tabView'

configuration.website_url = 'https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154'

configuration.remove_url = 'https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/uninstallTab'


request_body.configuration = configuration
additional_data = [
'teams_app@odata_bind' => 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8', 
];
request_body.additional_data(additional_data)





result = await client.chats.by_chat_id('chat-id').tabs.post(request_body = request_body)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TeamsTab()
request_body.display_name = 'My Contoso Tab - updated again'




result = await client.chats.by_chat_id('chat-id').tabs.by_tab_id('teamsTab-id').patch(request_body = request_body)


```
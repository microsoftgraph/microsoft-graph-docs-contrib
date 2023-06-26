---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AadUserConversationMember()
request_body.@odata_type = '#microsoft.graph.aadUserConversationMember'

request_body.Roles([])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/beta/users(\'jacob@contoso.com\')', 
];
request_body.additional_data(additional_data)





result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').members.post(request_body = request_body)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AadUserConversationMember()
request_body.@odata_type = '#microsoft.graph.aadUserConversationMember'

request_body.Roles([])

request_body.tenant_id = 'a18103d1-a6ef-4f66-ac64-e4ef42ea8681'

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/v1.0/users/bc3598dd-cce4-4742-ae15-173429951408', 
];
request_body.additional_data(additional_data)





result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').members.post(request_body = request_body)


```
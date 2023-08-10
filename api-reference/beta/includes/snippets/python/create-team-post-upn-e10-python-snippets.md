---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Team()
request_body.display_name = 'My Sample Team'

request_body.description = 'My Sample Team’s Description'

members_conversation_member1 = AadUserConversationMember()
members_conversation_member1.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member1.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/beta/users(\'jacob@contoso.com\')', 
];
members_conversation_member1.additional_data(additional_data)



membersArray []= membersConversationMember1;
request_body.members(membersArray)


additional_data = [
'template@odata_bind' => 'https://graph.microsoft.com/beta/teamsTemplates(\'standard\')', 
];
request_body.additional_data(additional_data)





result = await client.teams.post(request_body = request_body)


```
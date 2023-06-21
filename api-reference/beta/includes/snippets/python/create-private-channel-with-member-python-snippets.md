---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Channel()
request_body.@odata_type = '#Microsoft.Graph.channel'

request_body.membershiptype(ChannelMembershipType.Private('channelmembershiptype.private'))

request_body.display_name = 'My First Private Channel'

request_body.description = 'This is my first private channels'

members_conversation_member1 = AadUserConversationMember()
members_conversation_member1.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member1.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/beta/users(\'62855810-484b-4823-9e01-60667f8b12ae\')', 
];
members_conversation_member1.additional_data(additional_data)



membersArray []= membersConversationMember1;
request_body.members(membersArray)





result = await client.teams.by_team_id('team-id').channels.post(request_body = request_body)


```
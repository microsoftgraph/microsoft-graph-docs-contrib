---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AddPostRequestBody()
values_conversation_member1 = AadUserConversationMember()
values_conversation_member1.@odata_type = 'microsoft.graph.aadUserConversationMember'

values_conversation_member1.Roles([])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/v1.0/users(\'jacob@contoso.com\')', 
];
values_conversation_member1.additional_data(additional_data)



valuesArray []= valuesConversationMember1;
values_conversation_member2 = AadUserConversationMember()
values_conversation_member2.@odata_type = 'microsoft.graph.aadUserConversationMember'

values_conversation_member2.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/v1.0/users(\'alex@contoso.com\')', 
];
values_conversation_member2.additional_data(additional_data)



valuesArray []= valuesConversationMember2;
request_body.values(valuesArray)





result = await client.teams.by_team_id('team-id').members.add.post(request_body = request_body)


```
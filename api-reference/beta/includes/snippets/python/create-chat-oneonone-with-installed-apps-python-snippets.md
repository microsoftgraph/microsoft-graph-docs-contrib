---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Chat()
request_body.chattype(ChatType.OneOnOne('chattype.oneonone'))

members_conversation_member1 = AadUserConversationMember()
members_conversation_member1.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member1.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/beta/users(\'8b081ef6-4792-4def-b2c9-c363a1bf41d5\')', 
];
members_conversation_member1.additional_data(additional_data)



membersArray []= membersConversationMember1;
members_conversation_member2 = AadUserConversationMember()
members_conversation_member2.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member2.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/beta/users(\'82af01c5-f7cc-4a2e-a728-3a5df21afd9d\')', 
];
members_conversation_member2.additional_data(additional_data)



membersArray []= membersConversationMember2;
request_body.members(membersArray)


installed_apps_teams_app_installation1 = TeamsAppInstallation()
additional_data = [
'teams_app@odata_bind' => 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/05F59CEC-A742-4A50-A62E-202A57E478A4', 
];
installed_apps_teams_app_installation1.additional_data(additional_data)



installedAppsArray []= installedAppsTeamsAppInstallation1;
request_body.installedapps(installedAppsArray)





result = await client.chats.post(request_body = request_body)


```
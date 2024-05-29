---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Team team = new Team();
team.setDisplayName("My Sample Team");
team.setDescription("My Sample Team’s Description");
LinkedList<ConversationMember> members = new LinkedList<ConversationMember>();
AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.setOdataType("#microsoft.graph.aadUserConversationMember");
LinkedList<String> roles = new LinkedList<String>();
roles.add("owner");
conversationMember.setRoles(roles);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/v1.0/users('jacob@contoso.com')");
conversationMember.setAdditionalData(additionalData);
members.add(conversationMember);
team.setMembers(members);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("template@odata.bind", "https://graph.microsoft.com/v1.0/teamsTemplates('standard')");
team.setAdditionalData(additionalData1);
Team result = graphClient.teams().post(team);


```
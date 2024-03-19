---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.members.add.AddPostRequestBody addPostRequestBody = new com.microsoft.graph.beta.teams.item.members.add.AddPostRequestBody();
LinkedList<ConversationMember> values = new LinkedList<ConversationMember>();
AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.setOdataType("microsoft.graph.aadUserConversationMember");
LinkedList<String> roles = new LinkedList<String>();
conversationMember.setRoles(roles);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/beta/users('18a80140-b0fb-4489-b360-2f6efaf225a0')");
conversationMember.setAdditionalData(additionalData);
values.add(conversationMember);
AadUserConversationMember conversationMember1 = new AadUserConversationMember();
conversationMember1.setOdataType("microsoft.graph.aadUserConversationMember");
LinkedList<String> roles1 = new LinkedList<String>();
roles1.add("owner");
conversationMember1.setRoles(roles1);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("user@odata.bind", "https://graph.microsoft.com/beta/users('86503198-b81b-43fe-81ee-ad45b8848ac9')");
conversationMember1.setAdditionalData(additionalData1);
values.add(conversationMember1);
addPostRequestBody.setValues(values);
var result = graphClient.teams().byTeamId("{team-id}").members().add().post(addPostRequestBody);


```
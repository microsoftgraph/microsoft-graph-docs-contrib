---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.setOdataType("#microsoft.graph.aadUserConversationMember");
LinkedList<String> roles = new LinkedList<String>();
conversationMember.setRoles(roles);
conversationMember.setTenantId("a18103d1-a6ef-4f66-ac64-e4ef42ea8681");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("user@odata.bind", "https://graph.microsoft.com/v1.0/users/bc3598dd-cce4-4742-ae15-173429951408");
conversationMember.setAdditionalData(additionalData);
ConversationMember result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").members().post(conversationMember);


```
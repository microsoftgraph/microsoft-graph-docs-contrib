---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.additionalDataManager().put("user@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/users/8ba98gf6-7fc2-4eb2-c7f2-aef9f21fd98g"));
LinkedList<String> rolesList = new LinkedList<String>();
rolesList.add("guest");
conversationMember.roles = rolesList;

graphClient.chats("19:cf66807577b149cca1b7af0c32eec122@thread.v2").members()
	.buildRequest()
	.post(conversationMember);

```
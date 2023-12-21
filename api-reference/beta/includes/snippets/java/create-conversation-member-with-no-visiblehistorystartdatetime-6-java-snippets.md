---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.additionalDataManager().put("user@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/users/82af01c5-f7cc-4a2e-a728-3a5df21afd9d"));
LinkedList<String> rolesList = new LinkedList<String>();
rolesList.add("owner");
conversationMember.roles = rolesList;
conversationMember.tenantId = "4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1";

graphClient.chats("19:cf66807577b149cca1b7af0c32eec122@thread.v2").members()
	.buildRequest()
	.post(conversationMember);

```
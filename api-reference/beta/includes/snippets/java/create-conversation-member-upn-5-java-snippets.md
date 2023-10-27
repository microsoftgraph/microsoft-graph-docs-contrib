---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AadUserConversationMember conversationMember = new AadUserConversationMember();
conversationMember.additionalDataManager().put("user@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/users/jacob@contoso.com"));
conversationMember.visibleHistoryStartDateTime = OffsetDateTimeSerializer.deserialize("2019-04-18T23:51:43.255Z");
LinkedList<String> rolesList = new LinkedList<String>();
rolesList.add("owner");
conversationMember.roles = rolesList;

graphClient.chats("19:cf66807577b149cca1b7af0c32eec122@thread.v2").members()
	.buildRequest()
	.post(conversationMember);

```
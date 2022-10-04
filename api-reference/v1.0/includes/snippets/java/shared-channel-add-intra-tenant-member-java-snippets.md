---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AadUserConversationMember conversationMember = new AadUserConversationMember();
LinkedList<String> rolesList = new LinkedList<String>();
conversationMember.roles = rolesList;
conversationMember.additionalDataManager().put("user@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/users/24b3819b-4e1d-4f3e-86bd-e42b54d0b2b4"));

graphClient.teams("6a720ba5-7373-463b-bc9f-4cd04b5c6742").channels("19:LpxShHZZh9utjNcEmUS5aOEP9ASw85OUn05NcWYAhX81@thread.tacv2").members()
	.buildRequest()
	.post(conversationMember);

```
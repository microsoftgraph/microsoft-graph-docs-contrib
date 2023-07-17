---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Chat chat = graphClient.users("87d349ed-44d7-43e1-9a83-5f2406dee5bd").chats("19:b1234aaa12345a123aa12aa12aaaa1a9@thread.v2")
	.buildRequest()
	.get();

```
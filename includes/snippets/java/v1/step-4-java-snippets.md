---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessageCollectionPage messages = graphClient.users("87d349ed-44d7-43e1-9a83-5f2406dee5bd").chats("19:b1234aaa12345a123aa12aa12aaaa1a9@thread.v2").messages()
	.buildRequest()
	.filter("lastModifiedDateTime gt 2021-03-17T07:13:28.000z")
	.orderBy("createdDateTime desc")
	.top(2)
	.get();

```
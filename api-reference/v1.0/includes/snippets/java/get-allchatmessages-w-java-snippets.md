---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "include-unknown-enum-members"));

ChatMessageCollectionPage messages = graphClient.chats("19:2da4c29f6d7041eca70b638b43d45437@thread.v2").messages()
	.buildRequest( requestOptions )
	.top(2)
	.get();

```
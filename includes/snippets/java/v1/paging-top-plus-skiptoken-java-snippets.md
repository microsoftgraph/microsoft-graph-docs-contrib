---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserCollectionPage users = graphClient.users()
	.buildRequest()
	.skipToken("skiptoken=RFNwdAIAAQAAAD8...AAAAAAAA")
	.top(5)
	.get();

```
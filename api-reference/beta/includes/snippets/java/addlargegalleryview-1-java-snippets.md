---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String clientContext = "785f4929-92ca-497b-863f-c778c77c9758";

graphClient.communications().calls("57dab8b1-894c-409a-b240-bd8beae78896")
	.addLargeGalleryView(CallAddLargeGalleryViewParameterSet
		.newBuilder()
		.withClientContext(clientContext)
		.build())
	.buildRequest()
	.post();

```
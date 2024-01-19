---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualEventWebinarCollectionPage webinars = graphClient.solutions().virtualEvents().webinars()
	.buildRequest()
	.get();

```
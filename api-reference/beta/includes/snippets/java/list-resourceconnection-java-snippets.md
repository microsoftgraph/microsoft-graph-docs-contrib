---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ResourceConnectionCollectionPage resourceConnections = graphClient.admin().windows().updates().resourceConnections()
	.buildRequest()
	.get();

```
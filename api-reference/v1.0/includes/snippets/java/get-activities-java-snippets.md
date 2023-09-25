---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserActivityCollectionPage activities = graphClient.me().activities()
	.buildRequest()
	.get();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CategoryTemplateCollectionPage categories = graphClient.security().labels().categories()
	.buildRequest()
	.get();

```
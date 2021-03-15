---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IContentTypeCollectionPage contentTypes = graphClient.sites("{site-id}").contentTypes()
	.buildRequest()
	.get();

```
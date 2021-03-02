---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IStringCollectionPage responsibilities = graphClient.customRequest("/me/responsibilities", IStringCollectionPage.class)
	.buildRequest()
	.get();

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPersonAnnualEventCollectionPage anniversaries = graphClient.me().profile().anniversaries()
	.buildRequest()
	.get();

```
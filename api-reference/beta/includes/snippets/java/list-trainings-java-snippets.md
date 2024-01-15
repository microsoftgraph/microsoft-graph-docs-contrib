---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TrainingCollectionPage trainings = graphClient.security().attackSimulation().trainings()
	.buildRequest()
	.get();

```
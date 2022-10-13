---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SimulationCollectionPage simulations = graphClient.security().attackSimulation().simulations()
	.buildRequest()
	.get();

```
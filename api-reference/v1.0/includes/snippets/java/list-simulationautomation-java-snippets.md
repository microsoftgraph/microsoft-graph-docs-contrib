---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SimulationAutomationCollectionPage simulationAutomations = graphClient.security().attackSimulation().simulationAutomations()
	.buildRequest()
	.get();

```
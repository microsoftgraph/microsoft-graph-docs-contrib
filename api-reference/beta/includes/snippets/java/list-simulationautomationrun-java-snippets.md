---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SimulationAutomationRunCollectionPage runs = graphClient.security().attackSimulation().simulationAutomations("fbad62b0-b32d-b6ac-9f48-d84bbea08f96").runs()
	.buildRequest()
	.get();

```
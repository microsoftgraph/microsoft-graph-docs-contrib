---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserSimulationDetailsCollectionPage simulationUsers = graphClient.customRequest("/security/attackSimulation/simulations/{id}/report/simulationUsers", UserSimulationDetailsCollectionPage.class)
	.buildRequest()
	.get();

```
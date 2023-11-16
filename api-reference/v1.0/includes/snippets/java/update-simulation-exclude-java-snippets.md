---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Simulation simulation = new Simulation();
simulation.additionalDataManager().put("@odata.etag", new JsonPrimitive("\"0100aa9b-0000-0100-0000-6396fa270000\""));
simulation.id = "2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc";
simulation.status = SimulationStatus.EXCLUDED;

graphClient.security().attackSimulation().simulations("2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc")
	.buildRequest()
	.patch(simulation);

```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Simulation simulation = new Simulation();
simulation.setId("2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc");
simulation.setStatus(SimulationStatus.Cancelled);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.etag", "\"0100aa9b-0000-0100-0000-6396fa270000\"");
simulation.setAdditionalData(additionalData);
Simulation result = graphClient.security().attackSimulation().simulations().bySimulationId("{simulation-id}").patch(simulation);


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SimulationReportOverview simulationReportOverview = graphClient.customRequest("/security/attackSimulation/simulations/{id}/report/overview", SimulationReportOverview.class)
	.buildRequest()
	.get();

```
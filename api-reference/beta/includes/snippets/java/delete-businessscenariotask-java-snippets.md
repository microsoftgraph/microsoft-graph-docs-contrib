---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

graphClient.solutions().businessScenarios().byBusinessScenarioId("{businessScenario-id}").planner().tasks().byBusinessScenarioTaskId("{businessScenarioTask-id}").delete(requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```
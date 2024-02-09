---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BusinessScenarioTask businessScenarioTask = new BusinessScenarioTask();
businessScenarioTask.setOdataType("#microsoft.graph.businessScenarioTask");
businessScenarioTask.setTitle("Customer order #12010");
businessScenarioTask.setPercentComplete(20);
businessScenarioTask.setPriority(1);
BusinessScenarioProperties businessScenarioProperties = new BusinessScenarioProperties();
businessScenarioProperties.setExternalObjectVersion("000003");
businessScenarioTask.setBusinessScenarioProperties(businessScenarioProperties);
BusinessScenarioTask result = graphClient.solutions().businessScenarios().byBusinessScenarioId("{businessScenario-id}").planner().tasks().byBusinessScenarioTaskId("{businessScenarioTask-id}").patch(businessScenarioTask);


```
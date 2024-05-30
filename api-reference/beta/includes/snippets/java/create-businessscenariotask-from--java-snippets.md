---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BusinessScenarioTask businessScenarioTask = new BusinessScenarioTask();
businessScenarioTask.setOdataType("#microsoft.graph.businessScenarioTask");
businessScenarioTask.setTitle("Customer order #12010");
businessScenarioTask.setPercentComplete(0);
businessScenarioTask.setPriority(5);
BusinessScenarioGroupTarget target = new BusinessScenarioGroupTarget();
target.setOdataType("microsoft.graph.businessScenarioGroupTarget");
target.setTaskTargetKind(PlannerTaskTargetKind.Group);
target.setGroupId("7a339254-4b2b-4410-b295-c890a16776ee");
businessScenarioTask.setTarget(target);
BusinessScenarioProperties businessScenarioProperties = new BusinessScenarioProperties();
businessScenarioProperties.setExternalObjectId("Order#12010");
businessScenarioProperties.setExternalContextId("Warehouse-CA-36");
businessScenarioProperties.setExternalObjectVersion("000001");
businessScenarioProperties.setWebUrl("https://ordertracking.contoso.com/view?id=12010");
businessScenarioProperties.setExternalBucketId("deliveryBucket");
businessScenarioTask.setBusinessScenarioProperties(businessScenarioProperties);
BusinessScenarioTask result = graphClient.solutions().businessScenarios().byBusinessScenarioId("{businessScenario-id}").planner().tasks().post(businessScenarioTask);


```
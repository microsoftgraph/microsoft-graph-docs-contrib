---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BusinessScenarioTask businessScenarioTask = new BusinessScenarioTask();
businessScenarioTask.title = "Customer order #12010";
businessScenarioTask.percentComplete = 0;
businessScenarioTask.priority = 5;
BusinessScenarioGroupTarget target = new BusinessScenarioGroupTarget();
target.taskTargetKind = PlannerTaskTargetKind.GROUP;
target.groupId = "7a339254-4b2b-4410-b295-c890a16776ee";
businessScenarioTask.target = target;
BusinessScenarioProperties businessScenarioProperties = new BusinessScenarioProperties();
businessScenarioProperties.externalObjectId = "Order#12010";
businessScenarioProperties.externalContextId = "Warehouse-CA-36";
businessScenarioProperties.externalObjectVersion = "000001";
businessScenarioProperties.webUrl = "https://ordertracking.contoso.com/view?id=12010";
businessScenarioProperties.externalBucketId = "deliveryBucket";
businessScenarioTask.businessScenarioProperties = businessScenarioProperties;

graphClient.solutions().businessScenarios("c5d514e6c6864911ac46c720affb6e4d").planner().tasks()
	.buildRequest()
	.post(businessScenarioTask);

```
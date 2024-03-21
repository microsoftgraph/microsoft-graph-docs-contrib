---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.solutions.businessscenarios.item.planner.getplan.GetPlanPostRequestBody getPlanPostRequestBody = new com.microsoft.graph.beta.solutions.businessscenarios.item.planner.getplan.GetPlanPostRequestBody();
BusinessScenarioGroupTarget target = new BusinessScenarioGroupTarget();
target.setOdataType("microsoft.graph.businessScenarioGroupTarget");
target.setTaskTargetKind(PlannerTaskTargetKind.Group);
target.setGroupId("7a339254-4b2b-4410-b295-c890a16776ee");
getPlanPostRequestBody.setTarget(target);
var result = graphClient.solutions().businessScenarios().byBusinessScenarioId("{businessScenario-id}").planner().getPlan().post(getPlanPostRequestBody);


```
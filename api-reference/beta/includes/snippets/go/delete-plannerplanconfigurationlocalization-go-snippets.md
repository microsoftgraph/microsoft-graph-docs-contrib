---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Solutions().BusinessScenariosById("businessScenario-id").Planner().PlanConfiguration().LocalizationsById("plannerPlanConfigurationLocalization-id").Delete(context.Background(), nil)


```
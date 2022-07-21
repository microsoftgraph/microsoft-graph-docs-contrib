---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"If-Match": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}
configuration := &graphconfig.PlannerPlanRequestBuilderDeleteRequestConfiguration{
	Headers: headers,
}

graphClient.Planner().PlansById("plannerPlan-id").DeleteWithRequestConfigurationAndResponseHandler(configuration, nil)


```
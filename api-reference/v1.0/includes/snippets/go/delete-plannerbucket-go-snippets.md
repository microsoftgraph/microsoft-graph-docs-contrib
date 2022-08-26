---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"If-Match": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}
configuration := &graphconfig.PlannerBucketRequestBuilderDeleteRequestConfiguration{
	Headers: headers,
}

graphClient.Planner().BucketsById("plannerBucket-id").DeleteWithRequestConfigurationAndResponseHandler(configuration, nil)


```
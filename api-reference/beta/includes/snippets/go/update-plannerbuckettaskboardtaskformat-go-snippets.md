---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphplanner "github.com/microsoftgraph/msgraph-beta-sdk-go/planner"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")
headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")

configuration := &graphplanner.PlannerTaskItemBucketTaskBoardFormatRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerBucketTaskBoardTaskFormat()
orderHint := "A6673H Ejkl!"
requestBody.SetOrderHint(&orderHint) 

result, err := graphClient.Planner().Tasks().ByTaskId("plannerTask-id").BucketTaskBoardFormat().Patch(context.Background(), requestBody, configuration)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



startDateTime , err := time.Parse(time.RFC3339, "{startDateTime}")
endDateTime , err := time.Parse(time.RFC3339, "{endDateTime}")
microsoftGraphIdentityGovernanceSummary, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Runs().MicrosoftGraphIdentityGovernanceSummaryWithStartDateTimeWithEndDateTime(&startDateTime, &endDateTime).Get(context.Background(), nil)


```
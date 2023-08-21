---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



microsoft.graph.identityGovernance.summary(startDateTime={startDateTime},endDateTime={endDateTime}), err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").UserProcessingResults().MicrosoftGraphIdentityGovernanceSummary(startDateTime={startDateTime},endDateTime={endDateTime})().Get(context.Background(), nil)


```
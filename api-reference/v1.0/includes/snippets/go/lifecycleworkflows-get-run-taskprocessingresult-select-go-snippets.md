---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphidentitygovernance.IdentityGovernanceLifecycleWorkflowsWorkflowItemRunItemUserProcessingResultsRequestBuilderGetQueryParameters{
	Select: [] string {"id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","subject"},
}
configuration := &graphidentitygovernance.IdentityGovernanceLifecycleWorkflowsWorkflowItemRunItemUserProcessingResultsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

userProcessingResults, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Runs().ByRunId("run-id").UserProcessingResults().Get(context.Background(), configuration)


```
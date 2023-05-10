---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemRunItemUserProcessingResultItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","failedTasksCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","subject"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemRunItemUserProcessingResultItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Runs().ByRunId("run-id").UserProcessingResults().ByUserProcessingResultId("userProcessingResult-id").Get(context.Background(), configuration)


```
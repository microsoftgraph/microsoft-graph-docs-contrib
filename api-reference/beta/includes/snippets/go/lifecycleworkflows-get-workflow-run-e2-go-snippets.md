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


requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemRunItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","failedTasksCount","failedUsersCount","processingStatus","totalTasksCount","totalUnprocessedTasksCount","totalUsersCount"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemRunItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Runs().ByRunId("run-id").Get(context.Background(), configuration)


```
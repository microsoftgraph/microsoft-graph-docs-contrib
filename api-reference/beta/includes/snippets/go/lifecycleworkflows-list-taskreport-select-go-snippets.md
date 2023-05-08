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


requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemTaskReportsRequestBuilderGetQueryParameters{
	Select: [] string {"id","failedUsersCount","processingStatus","successfulUsersCount","totalUsersCount","unprocessedUsersCount","taskDefinition","taskProcessingResults"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemTaskReportsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").TaskReports().Get(context.Background(), configuration)


```
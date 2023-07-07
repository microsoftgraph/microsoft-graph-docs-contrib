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


requestParameters := &graphidentitygovernance.IdentityGovernanceLifecycleWorkflowsWorkflowItemUserProcessingResultItemTaskProcessingResultsRequestBuilderGetQueryParameters{
	Select: [] string {"id","processingStatus","failureReason","subject","task"},
}
configuration := &graphidentitygovernance.IdentityGovernanceLifecycleWorkflowsWorkflowItemUserProcessingResultItemTaskProcessingResultsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").UserProcessingResults().ByUserProcessingResultId("userProcessingResult-id").TaskProcessingResults().Get(context.Background(), configuration)


```
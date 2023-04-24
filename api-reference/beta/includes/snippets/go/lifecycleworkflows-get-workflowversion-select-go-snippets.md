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


requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemVersionItemRequestBuilderGetQueryParameters{
	Select: [] string {"category","displayName","versionNumber","executionConditions"},
	Expand: [] string {"tasks"},
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsWorkflowItemVersionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Versions().ByVersionId("workflowVersion-versionNumber").Get(context.Background(), configuration)


```
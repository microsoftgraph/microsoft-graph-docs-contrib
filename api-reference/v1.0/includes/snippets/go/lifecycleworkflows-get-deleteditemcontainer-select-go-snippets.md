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


requestParameters := &graphidentitygovernance.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowItemRequestBuilderGetQueryParameters{
	Select: [] string {"id","category","displayName","description","version","executionConditions"},
}
configuration := &graphidentitygovernance.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

workflows, err := graphClient.IdentityGovernance().LifecycleWorkflows().DeletedItems().Workflows().ByWorkflowId("workflow-id").Get(context.Background(), configuration)


```
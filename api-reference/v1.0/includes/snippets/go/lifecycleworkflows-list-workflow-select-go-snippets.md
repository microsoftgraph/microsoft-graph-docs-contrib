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



requestFilter := "category eq 'leaver'"

requestParameters := &graphidentitygovernance.IdentityGovernanceLifecycleWorkflowsWorkflowsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"id","category","displayName","isEnabled","isSchedulingEnabled"},
}
configuration := &graphidentitygovernance.IdentityGovernanceLifecycleWorkflowsWorkflowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().Get(context.Background(), configuration)


```
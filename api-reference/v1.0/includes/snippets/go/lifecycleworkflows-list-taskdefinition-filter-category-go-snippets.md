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



requestFilter := "category has 'joiner'"

requestParameters := &graphidentitygovernance.IdentityGovernanceLifecycleWorkflowsTaskDefinitionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernanceLifecycleWorkflowsTaskDefinitionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

taskDefinitions, err := graphClient.IdentityGovernance().LifecycleWorkflows().TaskDefinitions().Get(context.Background(), configuration)


```
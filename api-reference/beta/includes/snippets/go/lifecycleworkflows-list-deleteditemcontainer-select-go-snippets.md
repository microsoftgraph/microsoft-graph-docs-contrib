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



requestFilter := "category eq 'leaver'"

requestParameters := &graphconfig.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowsRequestBuilderGetQueryParameters{
	Select: [] string {"id","category","displayName","description","version"},
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityGovernanceLifecycleWorkflowsDeletedItemsWorkflowsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().DeletedItems().Workflows().Get(context.Background(), configuration)


```
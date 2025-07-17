---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

requestParameters := &graphidentitygovernance.LifecycleWorkflowsWorkflowsItemVersionsRequestBuilderGetQueryParameters{
	Select: [] string {"category","displayName","versionNumber"},
}
configuration := &graphidentitygovernance.LifecycleWorkflowsWorkflowsItemVersionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
versions, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Versions().Get(context.Background(), configuration)


```
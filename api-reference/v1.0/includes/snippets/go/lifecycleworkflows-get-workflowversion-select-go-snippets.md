---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/identitygovernance"
	  //other-imports
)

requestParameters := &graphidentitygovernance.LifecycleWorkflowsWorkflowsItemVersionsItemRequestBuilderGetQueryParameters{
	Select: [] string {"category","displayName","versionNumber","executionConditions"},
	Expand: [] string {"tasks"},
}
configuration := &graphidentitygovernance.LifecycleWorkflowsWorkflowsItemVersionsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
versions, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Versions().ByWorkflowVersionVersionNumber("workflowVersion-versionNumber").Get(context.Background(), configuration)


```
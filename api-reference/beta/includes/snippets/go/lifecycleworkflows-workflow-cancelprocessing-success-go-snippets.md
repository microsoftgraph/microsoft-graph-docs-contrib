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
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/models/identitygovernance"
	  //other-imports
)

requestBody := graphidentitygovernance.NewCancelProcessingPostRequestBody()
scope := graphmodelsidentitygovernance.NewCancelRunsScope()


run := graphmodelsidentitygovernance.NewRun()
id := "8cdf25a8-c9d2-423e-a03d-3f39f03c3e97"
run.SetId(&id) 

runs := []graphmodelsidentitygovernance.Runable {
	run,
}
scope.SetRuns(runs)
requestBody.SetScope(scope)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").MicrosoftGraphIdentityGovernanceCancelProcessing().Post(context.Background(), requestBody, nil)


```
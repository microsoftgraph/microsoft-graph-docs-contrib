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
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/models/identitygovernance"
	  //other-imports
)

requestBody := graphidentitygovernance.NewActivateWithScopePostRequestBody()
scope := graphmodelsidentitygovernance.NewActivateProcessingResultScope()


userProcessingResult := graphmodelsidentitygovernance.NewUserProcessingResult()
id := "abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_638927021459371237_0cdd8963-aaaa-4632-a1f2-aaaa7230aaaa"
userProcessingResult.SetId(&id) 
userProcessingResult1 := graphmodelsidentitygovernance.NewUserProcessingResult()
id := "abc12345-265a-4e8f-8d61-94a2dcd2d395_1_78799042-265a-4e8f-8d61-94a2dcd2d395_388131231459357126_aaaa8963-1c30-4632-aaaa-ac96723069cb"
userProcessingResult1.SetId(&id) 

processingResults := []graphmodelsidentitygovernance.UserProcessingResultable {
	userProcessingResult,
	userProcessingResult1,
}
scope.SetProcessingResults(processingResults)
taskScope := graphmodels.ALLTASKS_ACTIVATIONTASKSCOPETYPE 
scope.SetTaskScope(&taskScope) 
requestBody.SetScope(scope)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").MicrosoftGraphIdentityGovernanceActivateWithScope().Post(context.Background(), requestBody, nil)


```
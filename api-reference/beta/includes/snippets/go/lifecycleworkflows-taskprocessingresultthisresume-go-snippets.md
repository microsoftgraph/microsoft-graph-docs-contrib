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

requestBody := graphidentitygovernance.NewResumePostRequestBody()
data := graphmodelsidentitygovernance.NewCustomTaskExtensionCallbackData()
operationStatus := graphmodels.COMPLETED_CUSTOMTASKEXTENSIONOPERATIONSTATUS 
data.SetOperationStatus(&operationStatus) 
requestBody.SetData(data)
source := "sample"
requestBody.SetSource(&source) 
type := "lifecycleEvent"
requestBody.SetType(&type) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Tasks().ByTaskId("task-id").TaskProcessingResults().ByTaskProcessingResultId("taskProcessingResult-id").MicrosoftGraphIdentityGovernanceResume().Post(context.Background(), requestBody, nil)


```
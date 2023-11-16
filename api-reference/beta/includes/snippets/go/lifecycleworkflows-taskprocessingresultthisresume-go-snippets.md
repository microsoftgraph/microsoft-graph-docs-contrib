---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/models/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphidentitygovernance.NewResumePostRequestBody()
data := graphmodelsidentitygovernance.NewCustomTaskExtensionCallbackData()
operationStatus := graphmodels.COMPLETED_CUSTOMTASKEXTENSIONOPERATIONSTATUS 
data.SetOperationStatus(&operationStatus) 
requestBody.SetData(data)
source := "sample"
requestBody.SetSource(&source) 
type := "lifecycleEvent"
requestBody.SetType(&type) 

graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Tasks().ByTaskId("task-id").TaskProcessingResults().ByTaskProcessingResultId("taskProcessingResult-id").MicrosoftGraphIdentityGovernanceResume().Post(context.Background(), requestBody, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphidentitygovernance.NewResumePostRequestBody()
source := "Contoso.SodCheckProcess"
requestBody.SetSource(&source) 
type := "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated"
requestBody.SetType(&type) 
data := graphmodels.NewAccessPackageAssignmentRequestCallbackData()
stage := graphmodels.ASSIGNMENTREQUESTCREATED_ACCESSPACKAGECUSTOMEXTENSIONSTAGE 
data.SetStage(&stage) 
customExtensionStageInstanceId := "857d0c50-466b-4840-bb5b-c92cea7141ff"
data.SetCustomExtensionStageInstanceId(&customExtensionStageInstanceId) 
state := "denied"
data.SetState(&state) 
customExtensionStageInstanceDetail := "Potential risk user based on the SOD check"
data.SetCustomExtensionStageInstanceDetail(&customExtensionStageInstanceDetail) 
requestBody.SetData(data)

graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().ByAccessPackageAssignmentRequestId("accessPackageAssignmentRequest-id").Resume().Post(context.Background(), requestBody, nil)


```
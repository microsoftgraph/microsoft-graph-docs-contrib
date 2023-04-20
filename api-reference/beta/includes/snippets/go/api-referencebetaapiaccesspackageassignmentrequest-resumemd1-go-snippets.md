---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/IdentityGovernance/EntitlementManagement/AccessPackageAssignmentRequests/Item/Resume"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewResumePostRequestBody()
source := "Contoso.SodCheckProcess"
requestBody.SetSource(&source) 
type := "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated"
requestBody.SetType(&type) 
data := graphmodels.NewCustomExtensionData()
additionalData := map[string]interface{}{
	"stage" : "AssignmentRequestCreated", 
	"customExtensionStageInstanceId" : "857d0c50-466b-4840-bb5b-c92cea7141ff", 
	"state" : "denied", 
	"customExtensionStageInstanceDetail" : "Potential risk user based on the SOD check", 
}
data.SetAdditionalData(additionalData)
requestBody.SetData(data)

graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().ByAccessPackageAssignmentRequestId("accessPackageAssignmentRequest-id").Resume().Post(context.Background(), requestBody, nil)


```
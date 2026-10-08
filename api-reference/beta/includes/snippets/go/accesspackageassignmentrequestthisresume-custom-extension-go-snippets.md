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
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphidentitygovernance.NewResumePostRequestBody()
source := "Contoso.AADProcess"
requestBody.SetSource(&source) 
type := "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated"
requestBody.SetType(&type) 
data := graphmodels.NewAccessPackageRequestApprovalStageCallbackConfiguration()
additionalData := map[string]interface{}{
	"stage" : "assignmentRequestCreated", 
	"customExtensionStageInstanceId" : "7bf58d34-b3f9-4bae-8deb-abcd25cddea1", 
	"customExtensionStageInstanceDetail" : "Completed.", 
}
data.SetAdditionalData(additionalData)
requestBody.SetData(data)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentRequests().ByAccessPackageAssignmentRequestId("accessPackageAssignmentRequest-id").Resume().Post(context.Background(), requestBody, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageAssignmentRequest()
requestType := graphmodels.USERADD_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 
assignment := graphmodels.NewAccessPackageAssignment()
additionalData := map[string]interface{}{
	"accessPackageId" : "d7be3253-b9c6-4fab-adef-30d30de8da2b", 
}
assignment.SetAdditionalData(additionalData)
requestBody.SetAssignment(assignment)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentRequests().Post(context.Background(), requestBody, nil)


```
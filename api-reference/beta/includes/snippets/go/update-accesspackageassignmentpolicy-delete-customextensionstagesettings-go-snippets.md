---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageAssignmentPolicy()
id := "5540a08f-8ab5-43f6-a923-015275799197"
requestBody.SetId(&id) 
displayName := "policy with access package custom workflow extension"
requestBody.SetDisplayName(&displayName) 
description := "Run specified access package custom workflow extension at different stages."
requestBody.SetDescription(&description) 
accessPackageId := "ba5807c7-2aa9-4c8a-907e-4a17ee587500"
requestBody.SetAccessPackageId(&accessPackageId) 
requestApprovalSettings := null
requestBody.SetRequestApprovalSettings(&requestApprovalSettings) 
requestorSettings := graphmodels.NewRequestorSettings()
acceptRequests := true
requestorSettings.SetAcceptRequests(&acceptRequests) 
scopeType := "AllExistingDirectorySubjects"
requestorSettings.SetScopeType(&scopeType) 
allowedRequestors := []graphmodels.UserSetable {

}
requestorSettings.SetAllowedRequestors(allowedRequestors)
requestBody.SetRequestorSettings(requestorSettings)
accessReviewSettings := null
requestBody.SetAccessReviewSettings(&accessReviewSettings) 
customExtensionHandlers := []graphmodels.CustomExtensionHandlerable {

}
requestBody.SetCustomExtensionHandlers(customExtensionHandlers)
additionalData := map[string]interface{}{
expiration := graphmodels.New()
type := "afterDuration"
expiration.SetType(&type) 
duration := "P365D"
expiration.SetDuration(&duration) 
	requestBody.SetExpiration(expiration)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().ByAccessPackageAssignmentPolicieId("accessPackageAssignmentPolicy-id").Put(context.Background(), requestBody, nil)


```
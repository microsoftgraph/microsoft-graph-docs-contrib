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
displayName := "extension-policy"
requestBody.SetDisplayName(&displayName) 
description := "test"
requestBody.SetDescription(&description) 
accessPackageId := "ba5807c7-2aa9-4c8a-907e-4a17ee587500"
requestBody.SetAccessPackageId(&accessPackageId) 
canExtend := false
requestBody.SetCanExtend(&canExtend) 
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
additionalData := map[string]interface{}{
	isOnBehalfAllowed := false
requestorSettings.SetIsOnBehalfAllowed(&isOnBehalfAllowed) 
}
requestorSettings.SetAdditionalData(additionalData)
requestBody.SetRequestorSettings(requestorSettings)
accessReviewSettings := null
requestBody.SetAccessReviewSettings(&accessReviewSettings) 
questions := []graphmodels.AccessPackageQuestionable {

}
requestBody.SetQuestions(questions)


customExtensionHandler := graphmodels.NewCustomExtensionHandler()
stage := graphmodels.ASSIGNMENTREQUESTCREATED_ACCESSPACKAGECUSTOMEXTENSIONSTAGE 
customExtensionHandler.SetStage(&stage) 
customExtension := graphmodels.NewCustomAccessPackageWorkflowExtension()
id := "219f57b6-7983-45a1-be01-2c228b7a43f8"
customExtension.SetId(&id) 
customExtensionHandler.SetCustomExtension(customExtension)
customExtensionHandler1 := graphmodels.NewCustomExtensionHandler()
stage := graphmodels.ASSIGNMENTREQUESTGRANTED_ACCESSPACKAGECUSTOMEXTENSIONSTAGE 
customExtensionHandler1.SetStage(&stage) 
customExtension := graphmodels.NewCustomAccessPackageWorkflowExtension()
id := "219f57b6-7983-45a1-be01-2c228b7a43f8"
customExtension.SetId(&id) 
customExtensionHandler1.SetCustomExtension(customExtension)

customExtensionHandlers := []graphmodels.CustomExtensionHandlerable {
	customExtensionHandler,
	customExtensionHandler1,

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

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().Post(context.Background(), requestBody, nil)


```
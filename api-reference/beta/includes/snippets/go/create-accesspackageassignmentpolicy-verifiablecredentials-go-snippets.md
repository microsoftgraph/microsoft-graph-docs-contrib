---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageAssignmentPolicy()
displayName := "policy-with-verified-id"
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
customExtensionHandlers := []graphmodels.CustomExtensionHandlerable {

}
requestBody.SetCustomExtensionHandlers(customExtensionHandlers)
verifiableCredentialSettings := graphmodels.NewVerifiableCredentialSettings()


verifiableCredentialType := graphmodels.NewVerifiableCredentialType()
issuers := []string {
	"did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W<SNIP>...",
}
verifiableCredentialType.SetIssuers(issuers)
credentialType := "VerifiedCredentialExpert"
verifiableCredentialType.SetCredentialType(&credentialType) 

credentialTypes := []graphmodels.VerifiableCredentialTypeable {
	verifiableCredentialType,
}
verifiableCredentialSettings.SetCredentialTypes(credentialTypes)
requestBody.SetVerifiableCredentialSettings(verifiableCredentialSettings)
additionalData := map[string]interface{}{
expiration := graphmodels.New()
type := "afterDuration"
expiration.SetType(&type) 
duration := "P365D"
expiration.SetDuration(&duration) 
	requestBody.SetExpiration(expiration)
}
requestBody.SetAdditionalData(additionalData)

accessPackageAssignmentPolicies, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().Post(context.Background(), requestBody, nil)


```
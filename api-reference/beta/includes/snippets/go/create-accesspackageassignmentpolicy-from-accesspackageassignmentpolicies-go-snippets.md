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
accessPackageId := "56ff43fd-6b05-48df-9634-956a777fce6d"
requestBody.SetAccessPackageId(&accessPackageId) 
displayName := "direct"
requestBody.SetDisplayName(&displayName) 
description := "direct assignments by administrator"
requestBody.SetDescription(&description) 
accessReviewSettings := null
requestBody.SetAccessReviewSettings(&accessReviewSettings) 
requestorSettings := graphmodels.NewRequestorSettings()
scopeType := "NoSubjects"
requestorSettings.SetScopeType(&scopeType) 
acceptRequests := true
requestorSettings.SetAcceptRequests(&acceptRequests) 
allowedRequestors := []graphmodels.UserSetable {

}
requestorSettings.SetAllowedRequestors(allowedRequestors)
requestBody.SetRequestorSettings(requestorSettings)
requestApprovalSettings := graphmodels.NewApprovalSettings()
isApprovalRequired := false
requestApprovalSettings.SetIsApprovalRequired(&isApprovalRequired) 
isApprovalRequiredForExtension := false
requestApprovalSettings.SetIsApprovalRequiredForExtension(&isApprovalRequiredForExtension) 
isRequestorJustificationRequired := false
requestApprovalSettings.SetIsRequestorJustificationRequired(&isRequestorJustificationRequired) 
approvalMode := "NoApproval"
requestApprovalSettings.SetApprovalMode(&approvalMode) 
approvalStages := []graphmodels.ApprovalStageable {

}
requestApprovalSettings.SetApprovalStages(approvalStages)
requestBody.SetRequestApprovalSettings(requestApprovalSettings)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().Post(context.Background(), requestBody, nil)


```
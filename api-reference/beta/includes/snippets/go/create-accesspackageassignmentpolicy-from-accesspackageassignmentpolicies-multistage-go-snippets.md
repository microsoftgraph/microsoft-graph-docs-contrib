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
accessPackageId := "string (identifier)"
requestBody.SetAccessPackageId(&accessPackageId) 
displayName := "Users from connected organizations can request"
requestBody.SetDisplayName(&displayName) 
description := "Allow users from configured connected organizations to request and be approved by their sponsors"
requestBody.SetDescription(&description) 
canExtend := false
requestBody.SetCanExtend(&canExtend) 
durationInDays := int32(365)
requestBody.SetDurationInDays(&durationInDays) 
expirationDateTime := null
requestBody.SetExpirationDateTime(&expirationDateTime) 
requestorSettings := graphmodels.NewRequestorSettings()
scopeType := "AllExistingConnectedOrganizationSubjects"
requestorSettings.SetScopeType(&scopeType) 
acceptRequests := true
requestorSettings.SetAcceptRequests(&acceptRequests) 
allowedRequestors := []graphmodels.UserSetable {

}
requestorSettings.SetAllowedRequestors(allowedRequestors)
requestBody.SetRequestorSettings(requestorSettings)
requestApprovalSettings := graphmodels.NewApprovalSettings()
isApprovalRequired := true
requestApprovalSettings.SetIsApprovalRequired(&isApprovalRequired) 
isApprovalRequiredForExtension := false
requestApprovalSettings.SetIsApprovalRequiredForExtension(&isApprovalRequiredForExtension) 
isRequestorJustificationRequired := true
requestApprovalSettings.SetIsRequestorJustificationRequired(&isRequestorJustificationRequired) 
approvalMode := "Serial"
requestApprovalSettings.SetApprovalMode(&approvalMode) 


approvalStage := graphmodels.NewApprovalStage()
approvalStageTimeOutInDays := int32(14)
approvalStage.SetApprovalStageTimeOutInDays(&approvalStageTimeOutInDays) 
isApproverJustificationRequired := true
approvalStage.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
isEscalationEnabled := true
approvalStage.SetIsEscalationEnabled(&isEscalationEnabled) 
escalationTimeInMinutes := int32(11520)
approvalStage.SetEscalationTimeInMinutes(&escalationTimeInMinutes) 


userSet := graphmodels.NewGroupMembers()
isBackup := true
userSet.SetIsBackup(&isBackup) 
id := "string (identifier)"
userSet.SetId(&id) 
description := "group for users from connected organizations which have no external sponsor"
userSet.SetDescription(&description) 
userSet1 := graphmodels.NewExternalSponsors()
isBackup := false
userSet1.SetIsBackup(&isBackup) 

primaryApprovers := []graphmodels.UserSetable {
	userSet,
	userSet1,
}
approvalStage.SetPrimaryApprovers(primaryApprovers)


userSet := graphmodels.NewSingleUser()
isBackup := true
userSet.SetIsBackup(&isBackup) 
id := "string (identifier)"
userSet.SetId(&id) 
description := "user if the external sponsor does not respond"
userSet.SetDescription(&description) 

escalationApprovers := []graphmodels.UserSetable {
	userSet,
}
approvalStage.SetEscalationApprovers(escalationApprovers)
approvalStage1 := graphmodels.NewApprovalStage()
approvalStageTimeOutInDays := int32(14)
approvalStage1.SetApprovalStageTimeOutInDays(&approvalStageTimeOutInDays) 
isApproverJustificationRequired := true
approvalStage1.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
isEscalationEnabled := true
approvalStage1.SetIsEscalationEnabled(&isEscalationEnabled) 
escalationTimeInMinutes := int32(11520)
approvalStage1.SetEscalationTimeInMinutes(&escalationTimeInMinutes) 


userSet := graphmodels.NewGroupMembers()
isBackup := true
userSet.SetIsBackup(&isBackup) 
id := "string (identifier)"
userSet.SetId(&id) 
description := "group for users from connected organizations which have no internal sponsor"
userSet.SetDescription(&description) 
userSet1 := graphmodels.NewInternalSponsors()
isBackup := false
userSet1.SetIsBackup(&isBackup) 

primaryApprovers := []graphmodels.UserSetable {
	userSet,
	userSet1,
}
approvalStage1.SetPrimaryApprovers(primaryApprovers)


userSet := graphmodels.NewSingleUser()
isBackup := true
userSet.SetIsBackup(&isBackup) 
id := "string (identifier)"
userSet.SetId(&id) 
description := "user if the internal sponsor does not respond"
userSet.SetDescription(&description) 

escalationApprovers := []graphmodels.UserSetable {
	userSet,
}
approvalStage1.SetEscalationApprovers(escalationApprovers)

approvalStages := []graphmodels.ApprovalStageable {
	approvalStage,
	approvalStage1,
}
requestApprovalSettings.SetApprovalStages(approvalStages)
requestBody.SetRequestApprovalSettings(requestApprovalSettings)
accessReviewSettings := graphmodels.NewAssignmentReviewSettings()
isEnabled := true
accessReviewSettings.SetIsEnabled(&isEnabled) 
recurrenceType := "quarterly"
accessReviewSettings.SetRecurrenceType(&recurrenceType) 
reviewerType := "Self"
accessReviewSettings.SetReviewerType(&reviewerType) 
startDateTime , err := time.Parse(time.RFC3339, "2020-04-01T07:59:59.998Z")
accessReviewSettings.SetStartDateTime(&startDateTime) 
durationInDays := int32(25)
accessReviewSettings.SetDurationInDays(&durationInDays) 
reviewers := []graphmodels.UserSetable {

}
accessReviewSettings.SetReviewers(reviewers)
requestBody.SetAccessReviewSettings(accessReviewSettings)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().Post(context.Background(), requestBody, nil)


```
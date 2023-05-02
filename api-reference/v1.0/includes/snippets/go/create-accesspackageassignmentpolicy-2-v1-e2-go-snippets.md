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


requestBody := graphmodels.NewAccessPackageAssignmentPolicy()
displayName := "policy for external access requests"
requestBody.SetDisplayName(&displayName) 
description := "policy for users from connected organizations to request access, with two stages of approval."
requestBody.SetDescription(&description) 
allowedTargetScope := graphmodels.ALLCONFIGUREDCONNECTEDORGANIZATIONUSERS_ALLOWEDTARGETSCOPE 
requestBody.SetAllowedTargetScope(&allowedTargetScope) 
specificAllowedTargets := []graphmodels.SubjectSetable {

}
requestBody.SetSpecificAllowedTargets(specificAllowedTargets)
expiration := graphmodels.NewExpirationPattern()
type := graphmodels.NOEXPIRATION_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
requestBody.SetExpiration(expiration)
requestorSettings := graphmodels.NewAccessPackageAssignmentRequestorSettings()
enableTargetsToSelfAddAccess := true
requestorSettings.SetEnableTargetsToSelfAddAccess(&enableTargetsToSelfAddAccess) 
enableTargetsToSelfUpdateAccess := true
requestorSettings.SetEnableTargetsToSelfUpdateAccess(&enableTargetsToSelfUpdateAccess) 
enableTargetsToSelfRemoveAccess := true
requestorSettings.SetEnableTargetsToSelfRemoveAccess(&enableTargetsToSelfRemoveAccess) 
allowCustomAssignmentSchedule := false
requestorSettings.SetAllowCustomAssignmentSchedule(&allowCustomAssignmentSchedule) 
enableOnBehalfRequestorsToAddAccess := false
requestorSettings.SetEnableOnBehalfRequestorsToAddAccess(&enableOnBehalfRequestorsToAddAccess) 
enableOnBehalfRequestorsToUpdateAccess := false
requestorSettings.SetEnableOnBehalfRequestorsToUpdateAccess(&enableOnBehalfRequestorsToUpdateAccess) 
enableOnBehalfRequestorsToRemoveAccess := false
requestorSettings.SetEnableOnBehalfRequestorsToRemoveAccess(&enableOnBehalfRequestorsToRemoveAccess) 
onBehalfRequestors := []graphmodels.SubjectSetable {

}
requestorSettings.SetOnBehalfRequestors(onBehalfRequestors)
requestBody.SetRequestorSettings(requestorSettings)
requestApprovalSettings := graphmodels.NewAccessPackageAssignmentApprovalSettings()
isApprovalRequiredForAdd := true
requestApprovalSettings.SetIsApprovalRequiredForAdd(&isApprovalRequiredForAdd) 
isApprovalRequiredForUpdate := false
requestApprovalSettings.SetIsApprovalRequiredForUpdate(&isApprovalRequiredForUpdate) 


accessPackageApprovalStage := graphmodels.NewAccessPackageApprovalStage()
durationBeforeAutomaticDenial , err := abstractions.ParseISODuration("P14D")
accessPackageApprovalStage.SetDurationBeforeAutomaticDenial(&durationBeforeAutomaticDenial) 
isApproverJustificationRequired := false
accessPackageApprovalStage.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
isEscalationEnabled := false
accessPackageApprovalStage.SetIsEscalationEnabled(&isEscalationEnabled) 
durationBeforeEscalation , err := abstractions.ParseISODuration("PT0S")
accessPackageApprovalStage.SetDurationBeforeEscalation(&durationBeforeEscalation) 


subjectSet := graphmodels.NewSubjectSet()

primaryApprovers := []graphmodels.SubjectSetable {
	subjectSet,

}
accessPackageApprovalStage.SetPrimaryApprovers(primaryApprovers)


subjectSet := graphmodels.NewSubjectSet()
additionalData := map[string]interface{}{
	"userId" : "7deff43e-1f17-44ef-9e5f-d516b0ba11d4", 
}
subjectSet.SetAdditionalData(additionalData)
subjectSet1 := graphmodels.NewSubjectSet()
additionalData := map[string]interface{}{
	"groupId" : "1623f912-5e86-41c2-af47-39dd67582b66", 
}
subjectSet1.SetAdditionalData(additionalData)

fallbackPrimaryApprovers := []graphmodels.SubjectSetable {
	subjectSet,
	subjectSet1,

}
accessPackageApprovalStage.SetFallbackPrimaryApprovers(fallbackPrimaryApprovers)
escalationApprovers := []graphmodels.SubjectSetable {

}
accessPackageApprovalStage.SetEscalationApprovers(escalationApprovers)
fallbackEscalationApprovers := []graphmodels.SubjectSetable {

}
accessPackageApprovalStage.SetFallbackEscalationApprovers(fallbackEscalationApprovers)
accessPackageApprovalStage1 := graphmodels.NewAccessPackageApprovalStage()
durationBeforeAutomaticDenial , err := abstractions.ParseISODuration("P14D")
accessPackageApprovalStage1.SetDurationBeforeAutomaticDenial(&durationBeforeAutomaticDenial) 
isApproverJustificationRequired := false
accessPackageApprovalStage1.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
isEscalationEnabled := false
accessPackageApprovalStage1.SetIsEscalationEnabled(&isEscalationEnabled) 
durationBeforeEscalation , err := abstractions.ParseISODuration("PT0S")
accessPackageApprovalStage1.SetDurationBeforeEscalation(&durationBeforeEscalation) 
primaryApprovers := []graphmodels.SubjectSetable {

}
accessPackageApprovalStage1.SetPrimaryApprovers(primaryApprovers)


subjectSet := graphmodels.NewSubjectSet()
additionalData := map[string]interface{}{
	"userId" : "46184453-e63b-4f20-86c2-c557ed5d5df9", 
}
subjectSet.SetAdditionalData(additionalData)
subjectSet1 := graphmodels.NewSubjectSet()
additionalData := map[string]interface{}{
	"groupId" : "1623f912-5e86-41c2-af47-39dd67582b66", 
}
subjectSet1.SetAdditionalData(additionalData)

fallbackPrimaryApprovers := []graphmodels.SubjectSetable {
	subjectSet,
	subjectSet1,

}
accessPackageApprovalStage1.SetFallbackPrimaryApprovers(fallbackPrimaryApprovers)
escalationApprovers := []graphmodels.SubjectSetable {

}
accessPackageApprovalStage1.SetEscalationApprovers(escalationApprovers)
fallbackEscalationApprovers := []graphmodels.SubjectSetable {

}
accessPackageApprovalStage1.SetFallbackEscalationApprovers(fallbackEscalationApprovers)

stages := []graphmodels.AccessPackageApprovalStageable {
	accessPackageApprovalStage,
	accessPackageApprovalStage1,

}
requestApprovalSettings.SetStages(stages)
requestBody.SetRequestApprovalSettings(requestApprovalSettings)
reviewSettings := graphmodels.NewAccessPackageAssignmentReviewSettings()
isEnabled := true
reviewSettings.SetIsEnabled(&isEnabled) 
expirationBehavior := graphmodels.KEEPACCESS_ACCESSREVIEWEXPIRATIONBEHAVIOR 
reviewSettings.SetExpirationBehavior(&expirationBehavior) 
isRecommendationEnabled := true
reviewSettings.SetIsRecommendationEnabled(&isRecommendationEnabled) 
isReviewerJustificationRequired := true
reviewSettings.SetIsReviewerJustificationRequired(&isReviewerJustificationRequired) 
isSelfReview := false
reviewSettings.SetIsSelfReview(&isSelfReview) 
schedule := graphmodels.NewEntitlementManagementSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2022-07-02T06:59:59.998Z")
schedule.SetStartDateTime(&startDateTime) 
expiration := graphmodels.NewExpirationPattern()
duration , err := abstractions.ParseISODuration("P14D")
expiration.SetDuration(&duration) 
type := graphmodels.AFTERDURATION_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
schedule.SetExpiration(expiration)
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
type := graphmodels.ABSOLUTEMONTHLY_RECURRENCEPATTERNTYPE 
pattern.SetType(&type) 
interval := int32(3)
pattern.SetInterval(&interval) 
month := int32(0)
pattern.SetMonth(&month) 
dayOfMonth := int32(0)
pattern.SetDayOfMonth(&dayOfMonth) 
daysOfWeek := []graphmodels.DayOfWeekable {

}
pattern.SetDaysOfWeek(daysOfWeek)
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
type := graphmodels.NOEND_RECURRENCERANGETYPE 
range.SetType(&type) 
numberOfOccurrences := int32(0)
range.SetNumberOfOccurrences(&numberOfOccurrences) 
recurrence.SetRange(range)
schedule.SetRecurrence(recurrence)
reviewSettings.SetSchedule(schedule)


subjectSet := graphmodels.NewSubjectSet()
additionalData := map[string]interface{}{
	"groupId" : "1623f912-5e86-41c2-af47-39dd67582b66", 
}
subjectSet.SetAdditionalData(additionalData)

primaryReviewers := []graphmodels.SubjectSetable {
	subjectSet,

}
reviewSettings.SetPrimaryReviewers(primaryReviewers)
fallbackReviewers := []graphmodels.SubjectSetable {

}
reviewSettings.SetFallbackReviewers(fallbackReviewers)
requestBody.SetReviewSettings(reviewSettings)
accessPackage := graphmodels.NewAccessPackage()
id := "a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b"
accessPackage.SetId(&id) 
requestBody.SetAccessPackage(accessPackage)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentPolicies().Post(context.Background(), requestBody, nil)


```
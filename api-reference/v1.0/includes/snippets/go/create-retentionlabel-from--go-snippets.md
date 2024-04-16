---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewRetentionLabel()
displayName := "Retention Schedule 10005"
requestBody.SetDisplayName(&displayName) 
behaviorDuringRetentionPeriod := graphmodels.RETAIN_BEHAVIORDURINGRETENTIONPERIOD 
requestBody.SetBehaviorDuringRetentionPeriod(&behaviorDuringRetentionPeriod) 
actionAfterRetentionPeriod := graphmodels.STARTDISPOSITIONREVIEW_ACTIONAFTERRETENTIONPERIOD 
requestBody.SetActionAfterRetentionPeriod(&actionAfterRetentionPeriod) 
retentionTrigger := graphmodels.DATEOFEVENT_RETENTIONTRIGGER 
requestBody.SetRetentionTrigger(&retentionTrigger) 
retentionDuration := graphmodelssecurity.NewRetentionDurationInDays()
days := int32(2555)
retentionDuration.SetDays(&days) 
requestBody.SetRetentionDuration(retentionDuration)


dispositionReviewStage := graphmodelssecurity.NewDispositionReviewStage()
stageNumber := int32(1)
dispositionReviewStage.SetStageNumber(&stageNumber) 
name := "Stage1"
dispositionReviewStage.SetName(&name) 
additionalData := map[string]interface{}{
	reviewersEmailAddresses  := []string {
		"Admin@contoso.onmicrosoft.com",
	}
}
dispositionReviewStage.SetAdditionalData(additionalData)

dispositionReviewStages := []graphmodelssecurity.DispositionReviewStageable {
	dispositionReviewStage,
}
requestBody.SetDispositionReviewStages(dispositionReviewStages)
descriptionForAdmins := "retain for 7 years"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins) 
descriptionForUsers := "retain for 7 years"
requestBody.SetDescriptionForUsers(&descriptionForUsers) 
descriptors := graphmodelssecurity.NewFilePlanDescriptor()
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')", 
	"odataBind" : "https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')", 
	"odataBind" : "https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')", 
	"odataBind" : "https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')", 
	"odataBind" : "https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')", 
}
descriptors.SetAdditionalData(additionalData)
requestBody.SetDescriptors(descriptors)
defaultRecordBehavior := graphmodels.STARTLOCKED_DEFAULTRECORDBEHAVIOR 
requestBody.SetDefaultRecordBehavior(&defaultRecordBehavior) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/security/triggerTypes/retentionEventTypes('e095f4fc-b966-4c40-94de-fb8a383658e4')", 
}
requestBody.SetAdditionalData(additionalData)

retentionLabels, err := graphClient.Security().Labels().RetentionLabels().Post(context.Background(), requestBody, nil)


```
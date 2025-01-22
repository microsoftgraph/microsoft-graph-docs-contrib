---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

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
	"authorityTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/authorities('fie3f4fc-b966-4c40-94de-fb8a383658e4')", 
	"categoryTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/categories('0bjk8-b966-4c40-94de-fb8a383658e4')", 
	"citationTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/citations('0e23f4fc-b966-4c40-94de-fb8a383658e4')", 
	"departmentTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/departments('p99ef4fc-b966-4c40-94de-fb8a383658e4')", 
	"filePlanReferenceTemplate@odata.bind" : "https://graph.microsoft.com/beta/security/labels/filePlanReferences('e095f4fc-b966-4c40-94de-fb8a383658e4')", 
}
descriptors.SetAdditionalData(additionalData)
requestBody.SetDescriptors(descriptors)
defaultRecordBehavior := graphmodels.STARTLOCKED_DEFAULTRECORDBEHAVIOR 
requestBody.SetDefaultRecordBehavior(&defaultRecordBehavior) 
additionalData := map[string]interface{}{
	"retentionEventType@odata.bind" : "https://graph.microsoft.com/beta/security/triggerTypes/retentionEventTypes('e095f4fc-b966-4c40-94de-fb8a383658e4')", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
retentionLabels, err := graphClient.Security().Labels().RetentionLabels().Post(context.Background(), requestBody, nil)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewRetentionLabel()
"@odata.type" := "#microsoft.graph.security.retentionLabel"
requestBody.Set"@odata.type"(&"@odata.type") 
displayName := "String"
requestBody.SetDisplayName(&displayName) 
behaviorDuringRetentionPeriod := graphmodels.STRING_BEHAVIORDURINGRETENTIONPERIOD 
requestBody.SetBehaviorDuringRetentionPeriod(&behaviorDuringRetentionPeriod) 
actionAfterRetentionPeriod := graphmodels.STRING_ACTIONAFTERRETENTIONPERIOD 
requestBody.SetActionAfterRetentionPeriod(&actionAfterRetentionPeriod) 
retentionTrigger := graphmodels.STRING_RETENTIONTRIGGER 
requestBody.SetRetentionTrigger(&retentionTrigger) 
retentionDuration := graphmodels.NewRetentionDuration()
"@odata.type" := "microsoft.graph.security.retentionDuration"
retentionDuration.Set"@odata.type"(&"@odata.type") 
requestBody.SetRetentionDuration(retentionDuration)
isInUse := "Boolean"
requestBody.SetIsInUse(&isInUse) 
descriptionForAdmins := "String"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins) 
descriptionForUsers := "String"
requestBody.SetDescriptionForUsers(&descriptionForUsers) 
createdBy := graphmodels.NewIdentitySet()
"@odata.type" := "microsoft.graph.identitySet"
createdBy.Set"@odata.type"(&"@odata.type") 
requestBody.SetCreatedBy(createdBy)
labelToBeApplied := "String"
requestBody.SetLabelToBeApplied(&labelToBeApplied) 
defaultRecordBehavior := graphmodels.STRING_DEFAULTRECORDBEHAVIOR 
requestBody.SetDefaultRecordBehavior(&defaultRecordBehavior) 

result, err := graphClient.Security().Labels().RetentionLabels().Post(requestBody)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewRetentionLabel()
displayName := "String"
requestBody.SetDisplayName(&displayName) 
behaviorDuringRetentionPeriod := graphmodels.STRING_BEHAVIORDURINGRETENTIONPERIOD 
requestBody.SetBehaviorDuringRetentionPeriod(&behaviorDuringRetentionPeriod) 
actionAfterRetentionPeriod := graphmodels.STRING_ACTIONAFTERRETENTIONPERIOD 
requestBody.SetActionAfterRetentionPeriod(&actionAfterRetentionPeriod) 
retentionTrigger := graphmodels.STRING_RETENTIONTRIGGER 
requestBody.SetRetentionTrigger(&retentionTrigger) 
retentionDuration := graphmodels.NewRetentionDuration()
requestBody.SetRetentionDuration(retentionDuration)
isInUse := boolean
requestBody.SetIsInUse(&isInUse) 
descriptionForAdmins := "String"
requestBody.SetDescriptionForAdmins(&descriptionForAdmins) 
descriptionForUsers := "String"
requestBody.SetDescriptionForUsers(&descriptionForUsers) 
createdBy := graphmodels.NewIdentitySet()
requestBody.SetCreatedBy(createdBy)
labelToBeApplied := "String"
requestBody.SetLabelToBeApplied(&labelToBeApplied) 
defaultRecordBehavior := graphmodels.STRING_DEFAULTRECORDBEHAVIOR 
requestBody.SetDefaultRecordBehavior(&defaultRecordBehavior) 

result, err := graphClient.Security().Labels().RetentionLabels().Post(context.Background(), requestBody, nil)


```
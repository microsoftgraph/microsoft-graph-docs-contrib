---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelssecurity.NewRetentionLabel()
displayName := "String"
requestBody.SetDisplayName(&displayName) 
behaviorDuringRetentionPeriod := graphmodels.STRING_BEHAVIORDURINGRETENTIONPERIOD 
requestBody.SetBehaviorDuringRetentionPeriod(&behaviorDuringRetentionPeriod) 
actionAfterRetentionPeriod := graphmodels.STRING_ACTIONAFTERRETENTIONPERIOD 
requestBody.SetActionAfterRetentionPeriod(&actionAfterRetentionPeriod) 
retentionTrigger := graphmodels.STRING_RETENTIONTRIGGER 
requestBody.SetRetentionTrigger(&retentionTrigger) 
retentionDuration := graphmodelssecurity.NewRetentionDuration()
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
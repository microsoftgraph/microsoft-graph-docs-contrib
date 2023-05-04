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


requestBody := graphmodels.NewBusinessScenarioTask()
title := "Customer order #12010"
requestBody.SetTitle(&title) 
percentComplete := int32(0)
requestBody.SetPercentComplete(&percentComplete) 
priority := int32(5)
requestBody.SetPriority(&priority) 
target := graphmodels.NewBusinessScenarioTaskTargetBase()
taskTargetKind := graphmodels.GROUP_PLANNERTASKTARGETKIND 
target.SetTaskTargetKind(&taskTargetKind) 
additionalData := map[string]interface{}{
	"groupId" : "7a339254-4b2b-4410-b295-c890a16776ee", 
}
target.SetAdditionalData(additionalData)
requestBody.SetTarget(target)
businessScenarioProperties := graphmodels.NewBusinessScenarioProperties()
externalObjectId := "Order#12010"
businessScenarioProperties.SetExternalObjectId(&externalObjectId) 
externalContextId := "Warehouse-CA-36"
businessScenarioProperties.SetExternalContextId(&externalContextId) 
externalObjectVersion := "000001"
businessScenarioProperties.SetExternalObjectVersion(&externalObjectVersion) 
webUrl := "https://ordertracking.contoso.com/view?id=12010"
businessScenarioProperties.SetWebUrl(&webUrl) 
externalBucketId := "deliveryBucket"
businessScenarioProperties.SetExternalBucketId(&externalBucketId) 
requestBody.SetBusinessScenarioProperties(businessScenarioProperties)

result, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().Tasks().Post(context.Background(), requestBody, nil)


```
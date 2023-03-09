---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewGetPlanPostRequestBody()
target := graphmodels.NewBusinessScenarioTaskTargetBase()
taskTargetKind := graphmodels.GROUP_PLANNERTASKTARGETKIND 
target.SetTaskTargetKind(&taskTargetKind) 
additionalData := map[string]interface{}{
	"groupId" : "7a339254-4b2b-4410-b295-c890a16776ee", 
}
target.SetAdditionalData(additionalData)
requestBody.SetTarget(target)

result, err := graphClient.Solutions().BusinessScenariosById("businessScenario-id").Planner().GetPlan().Post(context.Background(), requestBody, nil)


```
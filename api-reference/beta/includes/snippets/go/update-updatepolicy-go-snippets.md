---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUpdatePolicy()
deploymentSettings := graphmodels.NewDeploymentSettings()
schedule := graphmodels.NewScheduleSettings()
gradualRollout := graphmodels.NewGradualRolloutSettings()
durationBetweenOffers , err := abstractions.ParseISODuration("P1D")
gradualRollout.SetDurationBetweenOffers(&durationBetweenOffers) 
additionalData := map[string]interface{}{
	"devicePerOffer" : int32(1000) , 
}
gradualRollout.SetAdditionalData(additionalData)
schedule.SetGradualRollout(gradualRollout)
deploymentSettings.SetSchedule(schedule)
requestBody.SetDeploymentSettings(deploymentSettings)

result, err := graphClient.Admin().Windows().Updates().UpdatePoliciesById("updatePolicy-id").Patch(context.Background(), requestBody, nil)


```
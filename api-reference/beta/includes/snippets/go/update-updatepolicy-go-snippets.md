---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelswindowsupdates "github.com/microsoftgraph/msgraph-beta-sdk-go/models/windowsupdates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelswindowsupdates.NewUpdatePolicy()
deploymentSettings := graphmodelswindowsupdates.NewDeploymentSettings()
schedule := graphmodelswindowsupdates.NewScheduleSettings()
gradualRollout := graphmodelswindowsupdates.NewRateDrivenRolloutSettings()
durationBetweenOffers , err := abstractions.ParseISODuration("P1D")
gradualRollout.SetDurationBetweenOffers(&durationBetweenOffers) 
additionalData := map[string]interface{}{
	"devicePerOffer" : int32(1000) , 
}
gradualRollout.SetAdditionalData(additionalData)
schedule.SetGradualRollout(gradualRollout)
deploymentSettings.SetSchedule(schedule)
requestBody.SetDeploymentSettings(deploymentSettings)

updatePolicies, err := graphClient.Admin().Windows().Updates().UpdatePolicies().ByUpdatePolicyId("updatePolicy-id").Patch(context.Background(), requestBody, nil)


```
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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelswindowsupdates.NewUpdatePolicy()
audience := graphmodelswindowsupdates.NewDeploymentAudience()
id := "8c4eb1eb-d7a3-4633-8e2f-f926e82df08e"
audience.SetId(&id) 
requestBody.SetAudience(audience)


complianceChange := graphmodelswindowsupdates.NewComplianceChange()

complianceChanges := []graphmodelswindowsupdates.ComplianceChangeable {
	complianceChange,

}
requestBody.SetComplianceChanges(complianceChanges)


complianceChangeRule := graphmodelswindowsupdates.NewComplianceChangeRule()
additionalData := map[string]interface{}{
contentFilter := graphmodels.New()
	complianceChangeRule.SetContentFilter(contentFilter)
	"durationBeforeDeploymentStart" : "P7D", 
}
complianceChangeRule.SetAdditionalData(additionalData)

complianceChangeRules := []graphmodelswindowsupdates.ComplianceChangeRuleable {
	complianceChangeRule,

}
requestBody.SetComplianceChangeRules(complianceChangeRules)
deploymentSettings := graphmodelswindowsupdates.NewDeploymentSettings()
schedule := graphmodelswindowsupdates.NewScheduleSettings()
gradualRollout := graphmodelswindowsupdates.NewGradualRolloutSettings()
durationBetweenOffers , err := abstractions.ParseISODuration("P1D")
gradualRollout.SetDurationBetweenOffers(&durationBetweenOffers) 
additionalData := map[string]interface{}{
	"devicePerOffer" : int32(1000) , 
}
gradualRollout.SetAdditionalData(additionalData)
schedule.SetGradualRollout(gradualRollout)
deploymentSettings.SetSchedule(schedule)
requestBody.SetDeploymentSettings(deploymentSettings)

result, err := graphClient.Admin().Windows().Updates().UpdatePolicies().Post(context.Background(), requestBody, nil)


```
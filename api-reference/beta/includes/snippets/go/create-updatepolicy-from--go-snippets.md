---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//windowsUpdates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUpdatePolicy()
audience := graphmodels.NewDeploymentAudience()
id := "8c4eb1eb-d7a3-4633-8e2f-f926e82df08e"
audience.SetId(&id) 
requestBody.SetAudience(audience)


complianceChange := graphmodels.NewComplianceChange()

complianceChanges := []graphmodels.ComplianceChangeable {
	complianceChange,

}
requestBody.SetComplianceChanges(complianceChanges)


complianceChangeRule := graphmodels.NewComplianceChangeRule()
additionalData := map[string]interface{}{
contentFilter := graphmodels.New()
	complianceChangeRule.SetContentFilter(contentFilter)
	"durationBeforeDeploymentStart" : "P7D", 
}
complianceChangeRule.SetAdditionalData(additionalData)

complianceChangeRules := []graphmodels.ComplianceChangeRuleable {
	complianceChangeRule,

}
requestBody.SetComplianceChangeRules(complianceChangeRules)
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

result, err := graphClient.Admin().Windows().Updates().UpdatePolicies().Post(context.Background(), requestBody, nil)


```
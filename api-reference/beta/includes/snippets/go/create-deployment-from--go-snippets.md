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


requestBody := graphmodels.NewDeployment()
content := graphmodels.NewDeployableContent()
additionalData := map[string]interface{}{
catalogEntry := graphmodels.New()
id := "f341705b-0b15-4ce3-aaf2-6a1681d78606"
catalogEntry.SetId(&id) 
	content.SetCatalogEntry(catalogEntry)
}
content.SetAdditionalData(additionalData)
requestBody.SetContent(content)
settings := graphmodels.NewDeploymentSettings()
schedule := graphmodels.NewScheduleSettings()
gradualRollout := graphmodels.NewGradualRolloutSettings()
durationBetweenOffers , err := abstractions.ParseISODuration("P7D")
gradualRollout.SetDurationBetweenOffers(&durationBetweenOffers) 
additionalData := map[string]interface{}{
	"devicePerOffer" : int32(100) , 
}
gradualRollout.SetAdditionalData(additionalData)
schedule.SetGradualRollout(gradualRollout)
settings.SetSchedule(schedule)
monitoring := graphmodels.NewMonitoringSettings()


monitoringRule := graphmodels.NewMonitoringRule()
signal := graphmodels.ROLLBACK_MONITORINGSIGNAL 
monitoringRule.SetSignal(&signal) 
threshold := int32(5)
monitoringRule.SetThreshold(&threshold) 
action := graphmodels.PAUSEDEPLOYMENT_MONITORINGACTION 
monitoringRule.SetAction(&action) 

monitoringRules := []graphmodels.MonitoringRuleable {
	monitoringRule,

}
monitoring.SetMonitoringRules(monitoringRules)
settings.SetMonitoring(monitoring)
requestBody.SetSettings(settings)

result, err := graphClient.Admin().Windows().Updates().Deployments().Post(context.Background(), requestBody, nil)


```
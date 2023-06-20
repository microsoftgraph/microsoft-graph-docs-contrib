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


requestBody := graphmodelswindowsupdates.NewDeployment()
content := graphmodelswindowsupdates.NewDeployableContent()
additionalData := map[string]interface{}{
catalogEntry := graphmodels.New()
id := "f341705b-0b15-4ce3-aaf2-6a1681d78606"
catalogEntry.SetId(&id) 
	content.SetCatalogEntry(catalogEntry)
}
content.SetAdditionalData(additionalData)
requestBody.SetContent(content)
settings := graphmodelswindowsupdates.NewDeploymentSettings()
schedule := graphmodelswindowsupdates.NewScheduleSettings()
gradualRollout := graphmodelswindowsupdates.NewGradualRolloutSettings()
durationBetweenOffers , err := abstractions.ParseISODuration("P7D")
gradualRollout.SetDurationBetweenOffers(&durationBetweenOffers) 
additionalData := map[string]interface{}{
	"devicePerOffer" : int32(100) , 
}
gradualRollout.SetAdditionalData(additionalData)
schedule.SetGradualRollout(gradualRollout)
settings.SetSchedule(schedule)
monitoring := graphmodelswindowsupdates.NewMonitoringSettings()


monitoringRule := graphmodelswindowsupdates.NewMonitoringRule()
signal := graphmodels.ROLLBACK_MONITORINGSIGNAL 
monitoringRule.SetSignal(&signal) 
threshold := int32(5)
monitoringRule.SetThreshold(&threshold) 
action := graphmodels.PAUSEDEPLOYMENT_MONITORINGACTION 
monitoringRule.SetAction(&action) 

monitoringRules := []graphmodelswindowsupdates.MonitoringRuleable {
	monitoringRule,

}
monitoring.SetMonitoringRules(monitoringRules)
settings.SetMonitoring(monitoring)
requestBody.SetSettings(settings)

result, err := graphClient.Admin().Windows().Updates().Deployments().Post(context.Background(), requestBody, nil)


```
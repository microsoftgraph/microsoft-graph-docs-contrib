---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelswindowsupdates "github.com/microsoftgraph/msgraph-beta-sdk-go/models/windowsupdates"
	  //other-imports
)

requestBody := graphmodelswindowsupdates.NewDeployment()
content := graphmodelswindowsupdates.NewCatalogContent()
catalogEntry := graphmodelswindowsupdates.NewFeatureUpdateCatalogEntry()
id := "f341705b-0b15-4ce3-aaf2-6a1681d78606"
catalogEntry.SetId(&id) 
content.SetCatalogEntry(catalogEntry)
requestBody.SetContent(content)
settings := graphmodelswindowsupdates.NewDeploymentSettings()
schedule := graphmodelswindowsupdates.NewScheduleSettings()
gradualRollout := graphmodelswindowsupdates.NewRateDrivenRolloutSettings()
durationBetweenOffers , err := abstractions.ParseISODuration("P7D")
gradualRollout.SetDurationBetweenOffers(&durationBetweenOffers) 
devicesPerOffer := int32(100)
gradualRollout.SetDevicesPerOffer(&devicesPerOffer) 
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deployments, err := graphClient.Admin().Windows().Updates().Deployments().Post(context.Background(), requestBody, nil)


```
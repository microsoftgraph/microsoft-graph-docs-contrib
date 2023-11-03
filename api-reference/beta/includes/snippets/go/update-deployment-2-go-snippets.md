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


requestBody := graphmodelswindowsupdates.NewDeployment()
settings := graphmodelswindowsupdates.NewDeploymentSettings()
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

deployments, err := graphClient.Admin().Windows().Updates().Deployments().ByDeploymentId("deployment-id").Patch(context.Background(), requestBody, nil)


```
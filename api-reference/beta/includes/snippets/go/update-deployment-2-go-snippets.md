---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDeployment()
"@odata.type" := "#microsoft.graph.windowsUpdates.deployment"
requestBody.Set"@odata.type"(&"@odata.type") 
settings := graphmodels.NewDeploymentSettings()
"@odata.type" := "microsoft.graph.windowsUpdates.windowsDeploymentSettings"
settings.Set"@odata.type"(&"@odata.type") 
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

graphClient.Admin().Windows().Updates().DeploymentsById("deployment-id").Patch(requestBody)


```
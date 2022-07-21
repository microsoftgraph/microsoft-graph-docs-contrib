---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDeployment()
"@odata.type" := "#microsoft.graph.windowsUpdates.deployment"
requestBody.Set"@odata.type"(&"@odata.type") 
content := graphmodels.NewDeployableContent()
"@odata.type" := "microsoft.graph.windowsUpdates.featureUpdateReference"
content.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
	"version" : "20H2", 
}
content.SetAdditionalData(additionalData)
requestBody.SetContent(content)
settings := graphmodels.NewDeploymentSettings()
"@odata.type" := "microsoft.graph.windowsUpdates.windowsDeploymentSettings"
settings.Set"@odata.type"(&"@odata.type") 
rollout := graphmodels.NewRolloutSettings()
devicesPerOffer := int32(100)
rollout.SetDevicesPerOffer(&devicesPerOffer) 
settings.SetRollout(rollout)
monitoring := graphmodels.NewMonitoringSettings()


monitoringRule := graphmodels.NewMonitoringRule()
"@odata.type" := "#microsoft.graph.windowsUpdates.monitoringRule"
monitoringRule.Set"@odata.type"(&"@odata.type") 
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

result, err := graphClient.Admin().Windows().Updates().Deployments().Post(requestBody)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDeployment()
content := graphmodels.NewDeployableContent()
additionalData := map[string]interface{}{
	"version" : "20H2", 
}
content.SetAdditionalData(additionalData)
requestBody.SetContent(content)
settings := graphmodels.NewDeploymentSettings()
rollout := graphmodels.NewRolloutSettings()
devicesPerOffer := int32(100)
rollout.SetDevicesPerOffer(&devicesPerOffer) 
settings.SetRollout(rollout)
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

result, err := graphClient.Admin().Windows().Updates().Deployments().Post(requestBody)


```
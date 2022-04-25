---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDeployment()
content := msgraphsdk.NewDeployableContent()
requestBody.SetContent(content)
content.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.windowsUpdates.featureUpdateReference",
	"version": "20H2",
}
settings := msgraphsdk.NewDeploymentSettings()
requestBody.SetSettings(settings)
rollout := msgraphsdk.NewRolloutSettings()
settings.SetRollout(rollout)
devicesPerOffer := int32(100)
rollout.SetDevicesPerOffer(&devicesPerOffer)
monitoring := msgraphsdk.NewMonitoringSettings()
settings.SetMonitoring(monitoring)
monitoring.SetMonitoringRules( []MonitoringRule {
	msgraphsdk.NewMonitoringRule(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.windowsUpdates.monitoringRule",
		"signal": "rollback",
		"threshold": ,
		"action": "pauseDeployment",
	}
}
settings.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.windowsUpdates.windowsDeploymentSettings",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.windowsUpdates.deployment",
}
options := &msgraphsdk.DeploymentsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Admin().Windows().Updates().Deployments().Post(options)


```
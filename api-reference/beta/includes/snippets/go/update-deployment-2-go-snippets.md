---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDeployment()
settings := msgraphsdk.NewDeploymentSettings()
requestBody.SetSettings(settings)
monitoring := msgraphsdk.NewMonitoringSettings()
settings.SetMonitoring(monitoring)
monitoring.SetMonitoringRules( []MonitoringRule {
	msgraphsdk.NewMonitoringRule(),
signal := "rollback"
	SetSignal(&signal)
threshold := int32(5)
	SetThreshold(&threshold)
action := "pauseDeployment"
	SetAction(&action)
}
settings.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.windowsUpdates.windowsDeploymentSettings",
}
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.windowsUpdates.deployment",
}
deploymentId := "deployment-id"
graphClient.Admin().Windows().Updates().DeploymentsById(&deploymentId).Patch(requestBody)


```
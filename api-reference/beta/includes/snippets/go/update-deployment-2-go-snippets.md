---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewDeployment()
settings := msgraphsdk.NewDeploymentSettings()
requestBody.SetSettings(settings)
monitoring := msgraphsdk.NewMonitoringSettings()
settings.SetMonitoring(monitoring)
monitoring.SetMonitoringRules( []MonitoringRule {
	msgraphsdk.NewMonitoringRule(),
	SetAdditionalData(map[string]interface{}{
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
options := &msgraphsdk.DeploymentRequestBuilderPatchOptions{
	Body: requestBody,
}
deploymentId := "deployment-id"
graphClient.Admin().Windows().Updates().DeploymentsById(&deploymentId).Patch(options)


```
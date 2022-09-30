---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewLifecycleManagementSettings()
workflowScheduleIntervalInHours := int32(3)
requestBody.SetWorkflowScheduleIntervalInHours(&workflowScheduleIntervalInHours) 
additionalData := map[string]interface{}{
	"@odata.context" : "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/settings/$entity", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Settings().Patch(context.Background(), requestBody, nil)


```
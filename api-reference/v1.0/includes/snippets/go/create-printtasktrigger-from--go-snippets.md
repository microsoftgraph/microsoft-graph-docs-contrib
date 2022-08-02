---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPrintTaskTrigger()
event := graphmodels.JOBSTARTED_PRINTEVENT 
requestBody.SetEvent(&event) 
additionalData := map[string]interface{}{
	"definition@odata.bind" : "https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Print().PrintersById("printer-id").TaskTriggers().Post(requestBody)


```
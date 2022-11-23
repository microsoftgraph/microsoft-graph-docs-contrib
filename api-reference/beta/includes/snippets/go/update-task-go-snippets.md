---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPrintTask()
status := graphmodels.NewPrintTaskStatus()
state := graphmodels.COMPLETED_PRINTTASKPROCESSINGSTATE 
status.SetState(&state) 
description := "completed"
status.SetDescription(&description) 
requestBody.SetStatus(status)

result, err := graphClient.Print().TaskDefinitionsById("printTaskDefinition-id").TasksById("printTask-id").Patch(context.Background(), requestBody, nil)


```
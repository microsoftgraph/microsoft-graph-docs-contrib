---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAttachment()
name := "name-value"
requestBody.SetName(&name) 
additionalData := map[string]interface{}{
item := graphmodels.New()
	requestBody.SetItem(item)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().EventsById("event-id").Attachments().Post(context.Background(), requestBody, nil)


```
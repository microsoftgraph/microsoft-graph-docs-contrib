---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMessage()
subject := "subject-value"
requestBody.SetSubject(&subject) 
body := graphmodels.NewItemBody()
content := "content-value"
body.SetContent(&content) 
requestBody.SetBody(body)
inferenceClassification := graphmodels.OTHER_INFERENCECLASSIFICATIONTYPE 
requestBody.SetInferenceClassification(&inferenceClassification) 

graphClient.Me().MessagesById("message-id").Patch(context.Background(), requestBody, nil)


```
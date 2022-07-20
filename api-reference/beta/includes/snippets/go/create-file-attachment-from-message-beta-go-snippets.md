---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAttachment()
"@odata.type" := "#microsoft.graph.fileAttachment"
requestBody.Set"@odata.type"(&"@odata.type") 
name := "smile"
requestBody.SetName(&name) 
additionalData := map[string]interface{}{
	"contentBytes" : "a0b1c76de9f7=", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().MessagesById("message-id").Attachments().Post(requestBody)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAttachment()
"@odata.type" := "#Microsoft.OutlookServices.FileAttachment"
requestBody.Set"@odata.type"(&"@odata.type") 
name := "name-value"
requestBody.SetName(&name) 
contentType := "contentType-value"
requestBody.SetContentType(&contentType) 
isInline := false
requestBody.SetIsInline(&isInline) 
additionalData := map[string]interface{}{
	"contentLocation" : "contentLocation-value", 
	"contentBytes" : "contentBytes-value", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().MessagesById("message-id").Attachments().Post(requestBody)


```
---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPrinterShare()
name := "name-value"
requestBody.SetName(&name)
requestBody.SetAdditionalData(map[string]interface{}{
	"printer@odata.bind": "https://graph.microsoft.com/beta/print/printers/{id}",
}
options := &msgraphsdk.SharesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Print().Shares().Post(options)


```
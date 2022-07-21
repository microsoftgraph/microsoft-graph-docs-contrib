---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMailFolder()
"@odata.type" := "microsoft.graph.mailSearchFolder"
requestBody.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
	"filterQuery" : "contains(subject, 'Analytics')", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Me().MailFoldersById("mailFolder-id").Patch(requestBody)


```
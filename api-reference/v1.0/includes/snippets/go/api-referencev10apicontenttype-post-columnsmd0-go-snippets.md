---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewColumnDefinition()
additionalData := map[string]interface{}{
	"sourceColumn@odata.bind" : "https://graph.microsoft.com/v1.0/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.SitesById("site-id").ContentTypesById("contentType-id").Columns().Post(context.Background(), requestBody, nil)


```
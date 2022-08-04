---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewExtension()
"@odata.type" := "microsoft.graph.openTypeExtension"
requestBody.Set"@odata.type"(&"@odata.type") 
additionalData := map[string]interface{}{
	"extensionName" : "Com.Contoso.Referral", 
	"companyName" : "Wingtip Toys", 
	"dealValue" : int32(500050) , 
	"expirationDate" : "2015-12-03T10:00:00.000Z", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().MessagesById("message-id").Extensions().Post(requestBody)


```
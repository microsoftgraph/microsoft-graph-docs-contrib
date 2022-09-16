---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/v1.0/users/{userId}"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.Print().SharesById("printerShare-id").AllowedUsers().$ref().Post(context.Background(), requestBody, nil)


```
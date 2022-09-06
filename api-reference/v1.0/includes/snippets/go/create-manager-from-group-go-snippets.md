---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceUpdate()
"@odata.id" := "https://graph.microsoft.com/v1.0/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.UsersById("user-id").Manager().$ref().Put(requestBody)


```
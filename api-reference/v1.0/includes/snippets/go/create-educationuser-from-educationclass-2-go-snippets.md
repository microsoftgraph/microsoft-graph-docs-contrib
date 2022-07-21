---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/v1.0/education/users/14011"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.Education().ClassesById("educationClass-id").Teachers().$ref().Post(requestBody)


```
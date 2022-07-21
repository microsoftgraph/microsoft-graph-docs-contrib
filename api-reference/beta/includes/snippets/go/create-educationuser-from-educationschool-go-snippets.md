---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/education/users/14008"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.Education().SchoolsById("educationSchool-id").Users().$ref().Post(requestBody)


```